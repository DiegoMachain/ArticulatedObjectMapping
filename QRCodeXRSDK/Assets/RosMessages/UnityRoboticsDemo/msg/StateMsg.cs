//Do not edit! This file was generated by Unity-ROS MessageGeneration.
using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Unity.Robotics.ROSTCPConnector.MessageGeneration;

namespace RosMessageTypes.UnityRoboticsDemo
{
    [Serializable]
    public class StateMsg : Message
    {
        public const string k_RosMessageName = "unity_robotics_demo_msgs/State";
        public override string RosMessageName => k_RosMessageName;

        public float state;

        public StateMsg()
        {
            this.state = 0.0f;
        }

        public StateMsg(float state)
        {
            this.state = state;
        }

        public static StateMsg Deserialize(MessageDeserializer deserializer) => new StateMsg(deserializer);

        private StateMsg(MessageDeserializer deserializer)
        {
            deserializer.Read(out this.state);
        }

        public override void SerializeTo(MessageSerializer serializer)
        {
            serializer.Write(this.state);
        }

        public override string ToString()
        {
            return "StateMsg: " +
            "\nstate: " + state.ToString();
        }

#if UNITY_EDITOR
        [UnityEditor.InitializeOnLoadMethod]
#else
        [UnityEngine.RuntimeInitializeOnLoadMethod]
#endif
        public static void Register()
        {
            MessageRegistry.Register(k_RosMessageName, Deserialize);
        }
    }
}