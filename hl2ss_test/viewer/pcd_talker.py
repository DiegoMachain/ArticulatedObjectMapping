#!/usr/bin/env python

from sensor_msgs import point_cloud2
from sensor_msgs.msg import PointCloud2, PointField
from geometry_msgs.msg import Point, Pose, PoseStamped, Quaternion, Transform, TransformStamped, Vector3
import open3d as o3d
from std_msgs.msg import Header, String

import rospy
import struct
import numpy as np

import crop_pcl

import sys

def getCoordinateSystem(size):
    points = [[0, 0, 0], [size, 0, 0], [0, size, 0], [0, 0, size]]
    lines = [[0, 1], [0, 2], [0, 3]]
    colors = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
    line_set = o3d.geometry.LineSet()
    line_set.points = o3d.utility.Vector3dVector(points)
    line_set.lines = o3d.utility.Vector2iVector(lines)
    line_set.colors = o3d.utility.Vector3dVector(colors)
    return line_set


#Use the pose 
pose = np.array([0.11, -0.41, -0.76, 0.839,-0.047, 0.246, 0.482])

crop = False

if not crop:
    bbox1 = np.asarray([[ 0.24046951, -0.39082012, -0.79296131],
 [ 0.07598042, -0.41336942, -0.58375702],
 [ 0.40458919, -0.41427912, -0.32223578],
 [ 0.55760958, -0.39119684, -0.54991687],
 [ 0.62070919, -0.24465359, -0.68997762],
 [ 0.37740293, -0.24353933, -0.88624749]])
    print(bbox1)
    bbox1 = o3d.utility.Vector3dVector(bbox1)
    bbox1 = o3d.geometry.OrientedBoundingBox.create_from_points(bbox1)

    bbox2 = np.asarray([[ 0.23811494, -0.3940958,  -0.7946167 ],
 [ 0.0722026,  -0.41252023, -0.5764407 ],
 [ 0.40607115, -0.41456073, -0.31901026],
 [ 0.55268662, -0.39123619, -0.54049384],
 [ 0.57272911, -0.17143627, -0.59915692],
 [ 0.28528508, -0.17633637, -0.82667763]])
    
    bbox2 = o3d.utility.Vector3dVector(bbox2)

    bbox2 = o3d.geometry.OrientedBoundingBox.create_from_points(bbox2)
else: 
    bbox1 = False
    bbox2 = False


#Initiate the nodes

rospy.init_node("create_cloud_xyzrgb")
pub = rospy.Publisher("point_cloud2", PointCloud2, queue_size=2)


fields = [PointField('x', 0, PointField.FLOAT32, 1),
          PointField('y', 4, PointField.FLOAT32, 1),
          PointField('z', 8, PointField.FLOAT32, 1),
          PointField('rgb', 12, PointField.UINT32, 0),
          PointField('state', 16, PointField.UINT32,0),
          #PointField('rgba', 12, PointField.UINT32, 1),
          ]

header = Header()
header.frame_id = "before"

#Path for the examples
path = "/home/vboxuser/Desktop/Semester_Project/Ditto_ROS/hl2ss_test/viewer/output/run1/"


#Send the before and after the interaction and crop them

line_set = getCoordinateSystem(1)

for k in range(3):
    
    pcd = o3d.io.read_point_cloud("%sworldpcd_%s.ply" %(path, k))
    #Example rotating the mesh

    if not bbox1:
        points = crop_pcl.pick_points(pcd)
        picked_points = np.asarray(pcd.points)[points]
        picked_points = o3d.utility.Vector3dVector(picked_points)
        bbox1 = o3d.geometry.OrientedBoundingBox.create_from_points(picked_points)
        print("First points = ", np.asarray(picked_points))
        #bbox = o3d.geometry.AxisAlignedBoundingBox.create_from_points(picked_points)

    #Draw a box to cut the object we want
    pcd = pcd.crop(bbox1)

    #Bounding box
    o3d.visualization.draw_geometries([pcd, bbox1])


    #_ = crop_pcl.pick_points(pcd_2)

    pc2 = point_cloud2.create_cloud(header, fields, np.asarray(pcd.points))

    pc2.header.stamp = rospy.Time.now()
    pub.publish(pc2)


#Send the before and after the interaction and crop them
header = Header()
header.frame_id = "after"

for k in range(70, 73):    
    pcd = o3d.io.read_point_cloud("%sworldpcd_%s.ply" %(path, k))

    #Crop the point cloud
    if not bbox2:
        points = crop_pcl.pick_points(pcd)
        picked_points = np.asarray(pcd.points)[points]
        picked_points = o3d.utility.Vector3dVector(picked_points)

        print("Second points = ", np.asarray(picked_points))
        bbox2 = o3d.geometry.OrientedBoundingBox.create_from_points(picked_points)
        #bbox = o3d.geometry.AxisAlignedBoundingBox.create_from_points(picked_points)

    #Crop the pointcloud with the box
    pcd = pcd.crop(bbox2)
    #_ = crop_pcl.pick_points(pcd_2)

    #Bounding box
    o3d.visualization.draw_geometries([pcd, bbox2])

    pc2 = point_cloud2.create_cloud(header, fields, np.asarray(pcd.points))

    pc2.header.stamp = rospy.Time.now()
    pub.publish(pc2)

#end
#Unnecesary publish, it's only to realize that we are done with the messages
header = Header()
header.frame_id = "end"

pc2 = point_cloud2.create_cloud(header, fields, np.asarray(pcd.points))

pc2.header.stamp = rospy.Time.now()
pub.publish(pc2)

