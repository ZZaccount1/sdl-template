cmake_minimum_required(VERSION 3.10)

# TODO: project name variable

project(main)

include_directories(include include/SDL2 include/headers)
link_directories(lib)

add_executable(main src/main.cpp)
target_link_libraries(main SDL2main SDL2 SDL2_image)
