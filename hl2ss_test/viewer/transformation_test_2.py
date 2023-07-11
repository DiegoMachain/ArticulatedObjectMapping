import numpy as np
from scipy.spatial.transform import Rotation as R

T = np.eye(4)

T[0,3] = -2
T[1,3] = -3
T[2,3] = -4

ang = np.pi/2
rotx = np.array([[1,0,0], [0, np.cos(ang), -np.sin(ang)] ,[0, np.sin(ang), np.cos(ang)]])

r = R.from_quat([0, 0, 0, 1])
T[:3,:3] = r.as_matrix()
print("Original = ", T)
print("Inverse  = ", np.linalg.inv(T))