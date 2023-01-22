cmake_minimum_required(VERSION 3.10)
project(main)

# Check if we're on Windows or Linux
if(CMAKE_HOST_SYSTEM_NAME MATCHES "MINGW64_NT-10.0-19044")
  message(STATUS "[ZZ] - windows")
  set(SDL2_DIR "lib/mingw")
  set(PLATFORM_LIBS mingw32)
else()
  message(STATUS "[ZZ] - linux")
  set(SDL2_DIR "lib/linux")
  set(PLATFORM_LIBS "")
endif()

# Set include and link directories
include_directories(include include/SDL2)
link_directories(${SDL2_DIR})

# Add source files
file(GLOB SRCS "src/*.cpp")

# Add executable
add_executable(main ${SRCS})

# Link libraries
target_link_libraries(main ${PLATFORM_LIBS} SDL2 SDL2main)