# PUCK (Portable Unexpected Keyboard Clone)

Designed to be used as a touchscreen keyboard for my linux tablet, you are free to clone/copy/redistribute the code in any way you want

# How to build?

It's easy, trust me. Just put these in your terminal and the program will be compiled in no time!
(Although, there are some dependencies but I'm too lazy to list them, just install some QT libraries)

```sh
mkdir build
cd build
cmake ..
make -j$(nproc)
```

And launch the `puck_app`!

# Known issues

I didn't quite implement a quit button, so `htop` is your only savior!
