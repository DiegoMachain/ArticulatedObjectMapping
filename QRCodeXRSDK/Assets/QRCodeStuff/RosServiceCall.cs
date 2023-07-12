using RosMessageTypes.UnityRoboticsDemo;
using UnityEngine;
using Unity.Robotics.ROSTCPConnector;
using Unity.Robotics.ROSTCPConnector.ROSGeometry;
#if WINDOWS_UWP
using Windows.Perception.Spatial;
#endif

public class RosServiceCall : MonoBehaviour {
    ROSConnection ros;

    public string serviceName = "pos_srv";

    public GameObject cube;

    // Cube movement conditions
    public float delta = 1.0f;
    public float speed = 2.0f;
    public float deltaRot = 0.1f;
    public float speedRot = 20.0f;
    private Vector3 destination;
    private Quaternion rot_destination = Quaternion.identity;

    float awaitingResponseUntilTimestamp = -1;


    private System.Guid id;
        public System.Guid Id

        


        {
            get
            {
                return id;
            }

            set
            {
                id = value;
#if WINDOWS_UWP
                CoordinateSystem = Windows.Perception.Spatial.Preview.SpatialGraphInteropPreview.CreateCoordinateSystemForNode(id);
                if (CoordinateSystem == null)
                {
                    Debug.Log("Id= " + id + " Failed to acquire coordinate system");
                }
#endif
            }
        }

    void Start() {
        ros = ROSConnection.GetOrCreateInstance();
        ros.RegisterRosService<PositionServiceRequest, PositionServiceResponse>(serviceName);
        destination = cube.transform.position;
        rot_destination = cube.transform.rotation;

    }

    private void Update() {

 
        cube.transform.SetPositionAndRotation(destination, rot_destination);


#if WINDOWS_UWP

        //We need to transform the translation and rotation to left handed systems
        System.IntPtr rootCoordnateSystemPtr = UnityEngine.XR.WindowsMR.WindowsMREnvironment.OriginSpatialCoordinateSystem;
        SpatialCoordinateSystem rootSpatialCoordinateSystem = (SpatialCoordinateSystem)System.Runtime.InteropServices.Marshal.GetObjectForIUnknown(rootCoordnateSystemPtr);

        // Get the relative transform from the unity origin
        // Coordinate system should be the pose

        Vector3 scale = new Vector3(1.0f, 1.0f, 1.0f);
        //System.Numerics.Matrix4x4 CoordinateSystem = Matrix4x4.TRS(destination, rot_destination, scale);
        /*
        Matrix4x4 CoordinateSystem = Matrix4x4.TRS(destination, rot_destination, scale);
        //Assign the translations too

        Debug.Log("Coordinate system 1 = " + CoordinateSystem.ToString("F3"));
        CoordinateSystem[3,0] = destination.x;
        CoordinateSystem[3,1] = destination.y;
        CoordinateSystem[3,2] = destination.z;

        Debug.Log("Coordinate system 2 = " + CoordinateSystem.ToString("F3"));

        */

        System.Numerics.Vector3 trans = new System.Numerics.Vector3(destination.x, destination.y, destination.z);
        System.Numerics.Quaternion rota = new System.Numerics.Quaternion(rot_destination.x, rot_destination.y, rot_destination.z, rot_destination.w);

        CoordinateSystem = Windows.Perception.Spatial.Preview.SpatialGraphInteropPreview.TryCreateFrameOfReference(rootSpatialCoordinateSystem, trans, rota);

        System.Numerics.Matrix4x4? relativePose = CoordinateSystem.TryGetTransformTo(rootSpatialCoordinateSystem);

        System.Numerics.Matrix4x4 newMatrix = relativePose.Value;

        // Platform coordinates are all right handed and unity uses left handed matrices. so we convert the matrix
        // from rhs-rhs to lhs-lhs 
        // Convert from right to left coordinate system
        newMatrix.M13 = -newMatrix.M13;
        newMatrix.M23 = -newMatrix.M23;
        newMatrix.M43 = -newMatrix.M43;

        newMatrix.M31 = -newMatrix.M31;
        newMatrix.M32 = -newMatrix.M32;
        newMatrix.M34 = -newMatrix.M34;


#endif

        //Create a cylinder 
        //GameObject cylinder = GameObject.CreatePrimitive(PrimitiveType.Cylinder);
        //cylinder.transform.position = destination;
        //cylinder.transform.rotation = rot_destination;

        //Difference

        /*

        Debug.Log("Angle received = " + rot_destination.ToString("F3"));
        Debug.Log("Cylinder angle = " + cube.transform.rotation.ToString("F3"));
        Debug.Log("Euler angles = " + cube.transform.eulerAngles.ToString("F3"));
        Debug.Log("Euler angles = " + rot_destination.eulerAngles.ToString("F3"));
        Debug.Log("Angle difference = " + Quaternion.Angle(cube.transform.rotation, rot_destination));

        Debug.Log("Position difference = " + Vector3.Distance(cube.transform.position, destination));

        //We don't need to move the cylinder smoothly
        Debug.Log("Destination reached.");
        */

        Debug.Log("Position difference = " + Vector3.Distance(cube.transform.position, destination));

        PosRotMsg cubePos = new PosRotMsg(
            cube.transform.position.x,
            cube.transform.position.y,
            cube.transform.position.z,
            cube.transform.rotation.x,
            cube.transform.rotation.y,
            cube.transform.rotation.z,
            cube.transform.rotation.w
        );

        PositionServiceRequest positionServiceRequest = new PositionServiceRequest(cubePos);

        // Send message to ROS and return the response
        ros.SendServiceMessage<PositionServiceResponse>(serviceName, positionServiceRequest, Callback_Destination);
        awaitingResponseUntilTimestamp = Time.time + 1.0f; // don't send again for 1 second, or until we receive a response

        /*
        //Check the angle and the position to see if we arrived
        if (Quaternion.Angle(cube.transform.rotation, rot_destination) < deltaRot && Vector3.Distance(cube.transform.position, destination) < delta && Time.time > awaitingResponseUntilTimestamp) {
            Debug.Log("Destination reached.");

            PosRotMsg cubePos = new PosRotMsg(
                cube.transform.position.x,
                cube.transform.position.y,
                cube.transform.position.z,
                cube.transform.rotation.x,
                cube.transform.rotation.y,
                cube.transform.rotation.z,
                cube.transform.rotation.w
            );

            PositionServiceRequest positionServiceRequest = new PositionServiceRequest(cubePos);

            // Send message to ROS and return the response
            ros.SendServiceMessage<PositionServiceResponse>(serviceName, positionServiceRequest, Callback_Destination);
            awaitingResponseUntilTimestamp = Time.time + 1.0f; // don't send again for 1 second, or until we receive a response
        }
        */
    }

    void Callback_Destination(PositionServiceResponse response) {

        awaitingResponseUntilTimestamp = -1;
        //Vector3<FLU> destination = new Vector3<FLU>(response.output.pos_x, response.output.pos_y, response.output.pos_z);
        //destination = new Vector3(response.output.)
        destination = new Vector3(-response.output.pos_y, response.output.pos_z, response.output.pos_x);

        //Quaternion<FLU> rot_destination = new Quaternion<FLU>(response.output.rot_x, response.output.rot_y, response.output.rot_z, response.output.rot_w);

        rot_destination = new Quaternion(-response.output.rot_y, response.output.rot_z, response.output.rot_x, -response.output.rot_w);

        
        //Convert them to RUF (Right, up, forward)
        Debug.Log("Rot FLU: " + rot_destination);
        Debug.Log("Trans FLU = " + destination);
    }
}