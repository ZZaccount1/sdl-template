# Dependencies
### Windows
* [MINGW](http://mingw.osdn.io/index.html)
  
### Linux
<b>Ubuntu:</b>
```bash
sudo apt install cmake build-essential
```

# Usage
### Installation
<!-- Add information about using the template and the cloning -->
```bash
git clone https://github.com/zzaccount1/sdl-template
```

### Building

#### Windows
<b>MINGW</b>
<!-- ToDo: check if pacman -Sy cmake is enough, maybe i need also build essential or installing cmake on windows idk --> 
```bash
cd sdl-template
mkdir build
cd build
pacman -Sy cmake
cmake ..
mingw32-make
./[project-name] # Name that is in the written in CMakeLists.txt
```

<!--
<b>Visual Studio:</b>
```bash
msbuild /p:Configuration=Release main.sln
```
<b>WSL:</b>
Follow the [*nix](#nix) section.
-->

#### *nix
```bash
cd sdl-template
mkdir build
cd build
cmake ..
make
./[project-name] # Name that is in the written in CMakeLists.txt
```
