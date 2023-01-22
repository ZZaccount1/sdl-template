# Dependencies
### Windows
* [CMake](https://cmake.org) 3.10+
* Visual Studio 2019 or 2020 | OR | [WSL](https://learn.microsoft.com/en-us/windows/wsl/about)
  
### Linux
<b>Ubuntu:</b>
```bash
sudo apt install cmake build-essential
```

### MacOS
idk

# Usage
### Installation
```bash
git clone https://github.com/zzaccount1/sdl-template
```

### Building
After writing the code for your project you will need to build and run it to check if everything works.

#### Windows
<b>Visual Studio:</b>
```bash
msbuild /p:Configuration=Release main.sln
```

<b>WSL:</b>
Follow the [*nix](#nix) section.

#### *nix
```bash
cd sdl-template
mkdir build
cd build
cmake ..
make
./main
```
