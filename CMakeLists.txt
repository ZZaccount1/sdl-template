cmake_minimum_required(VERSION 3.10)

set(PROJ_NAME "main")
project(${PROJ_NAME})

# Check if we're on Windows or Linux
if(CMAKE_HOST_SYSTEM_NAME MATCHES "MINGW64_NT-10.0-19044")
  set(SDL2_DIR "lib/mingw")
  set(PLATFORM_LIBS mingw32)
else()
  set(SDL2_DIR "lib/linux")
  set(PLATFORM_LIBS "")
endif()

# Set include and link directories
include_directories(include include/SDL2)
link_directories(${SDL2_DIR})

# Add source files
file(GLOB SRCS "src/*.cpp")

# Add executable
add_executable(${PROJ_NAME} ${SRCS})

# Link libraries
target_link_libraries(${PROJ_NAME} ${PLATFORM_LIBS} SDL2main SDL2 SDL2_image)
