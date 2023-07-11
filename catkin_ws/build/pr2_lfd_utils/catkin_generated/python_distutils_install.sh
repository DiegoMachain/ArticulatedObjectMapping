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

echo_and_run cd "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_lfd_utils"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/vboxuser/Desktop/Semester_Project/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/vboxuser/Desktop/Semester_Project/catkin_ws/install/lib/python2.7/dist-packages:/home/vboxuser/Desktop/Semester_Project/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/vboxuser/Desktop/Semester_Project/catkin_ws/build" \
    "/usr/bin/python2" \
    "/home/vboxuser/Desktop/Semester_Project/catkin_ws/src/pr2_lfd_utils/setup.py" \
     \
    build --build-base "/home/vboxuser/Desktop/Semester_Project/catkin_ws/build/pr2_lfd_utils" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/vboxuser/Desktop/Semester_Project/catkin_ws/install" --install-scripts="/home/vboxuser/Desktop/Semester_Project/catkin_ws/install/bin"
