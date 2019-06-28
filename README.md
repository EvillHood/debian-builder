# debian-builder
C++, Qt5, cmake, VNC, debian-testing based, docker image

* docker run -it -e DISPLAY=$DISPLAY -p 5900:5900  -v /home/../PATH2SOURCE/:/source -v /home/../PATH2BUILD/.data:/root/.RESULT/ evillhood/debian-builder:latest
In /source/
* cmake -DCMAKE_BUILD_TYPE=Debug .
* make install -j8
* Xvfb -ac :1 &
* x11vnc -display :1 &  twm -display :1 &  /root/.RESULT/bin/*gui* -display :1

xtigervnc host:5900
