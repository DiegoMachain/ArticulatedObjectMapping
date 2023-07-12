#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/moveit/moveit_commander"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/install/lib/python2.7/dist-packages:/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build" \
    "/usr/bin/python2" \
    "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/src/moveit/moveit_commander/setup.py" \
    egg_info --egg-base /home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/moveit/moveit_commander \
    build --build-base "/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/build/moveit/moveit_commander" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/install" --install-scripts="/home/vboxuser/Desktop/Semester_Project/catkin_particleFilter2/install/bin"