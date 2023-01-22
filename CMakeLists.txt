cmake_minimum_required(VERSION 3.10)
project(main)

# Check if we're on Windows or Linux
if(CMAKE_HOST_SYSTEM_NAME MATCHES "MINGW64_NT-10.0-19044")
  message(STATUS "[ZZ] - windows")
  set(SDL2_DIR "lib/mingw")
  set(PLATFORM_LIBS mingw32)
  set(SDL2_DLL "SDL2_mingw")
else()
  message(STATUS "[ZZ] - linux")
  set(SDL2_DIR "lib/linux")
  set(PLATFORM_LIBS "")
  set(SDL2_DLL "SDL2")
endif()

# Set include and link directories
include_directories(include include/SDL2)
link_directories(${SDL2_DIR})

# Add source files
file(GLOB SRCS "src/*.cpp")

# Add executable
add_executable(main ${SRCS})

# Link libraries
target_link_libraries(main ${SDL2_DLL} SDL2main ${PLATFORM_LIBS})