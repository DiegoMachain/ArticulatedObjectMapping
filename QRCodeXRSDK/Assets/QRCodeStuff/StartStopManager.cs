using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.Robotics.ROSTCPConnector;
using RosMessageTypes.UnityRoboticsDemo;
using QRTracking;

public class StartStopManager : MonoBehaviour
{

    // ROS connection
    ROSConnection ros;
    public string topicName = "state";
    // Start is called before the first frame update
    void Start()
    {
        // start the ROS connection
        ros = ROSConnection.GetOrCreateInstance();
        ros.RegisterPublisher<StateMsg>(topicName);
    }

    public void BeforeInteraction() {
        // start QR tracking with the press of a button
        StateMsg state = new StateMsg(0.0f);
        ros.Publish(topicName, state);
    }
    public void StopBeforeInteraction() {
        // start QR tracking with the press of a button
        StateMsg state = new StateMsg(1.0f);
        ros.Publish(topicName, state);
    }
    public void AfterInteraction() {
        // Start the tracking with the press of a button
        StateMsg state = new StateMsg(2.0f);
        ros.Publish(topicName, state);
    }
    public void StopAfterInteraction() {
        // Stop the tracking with the press of a button
        StateMsg state = new StateMsg(3.0f);
        ros.Publish(topicName, state);
    }

    public void StopScanning() {
        // Stop the tracking with the press of a button
        StateMsg state = new StateMsg(4.0f);
        ros.Publish(topicName, state);
    }

    //Say if the bbox has started
    public void StartBbox() {
        StateMsg state = new StateMsg(5.0f);
        ros.Publish(topicName, state);
    }
    
    //Stop bbox scan
    public void StopBbox() {
        StateMsg state = new StateMsg(6.0f);
        ros.Publish(topicName, state);
    }

    public void StopProcess() {
        // Stop the tracking with the press of a button
        StateMsg state = new StateMsg(7.0f);
        ros.Publish(topicName, state);
    }
}
