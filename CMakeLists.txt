cmake_minimum_required(VERSION 3.10)

# Creating an variable for project's name
set(PROJ_NAME "main")
project(${PROJ_NAME})

# Add SDL2 libraries
add_subdirectory(libs/SDL2)
add_subdirectory(libs/SDL2_image)
add_subdirectory(libs/SDL2_ttf)

# Include directories
include_directories(include libs/SDL2/include libs/SDL2_image/include libs/SDL2_ttf/include)

# Link directories
link_directories(libs/SDL2/lib libs/SDL2_image/lib libs/SDL2_ttf/lib)

# Create an variable for the path where images will be located
set(BIN_DIR ${CMAKE_BINARY_DIR})
set(IMAGES_DIR "${BIN_DIR}/images")

# Add source files
file(GLOB SRCS "src/*.cpp")


# Copy image files to build directory
file(COPY images DESTINATION . FILES_MATCHING PATTERN "*.png")

#Check if image exist
if(NOT EXISTS ${IMAGES_DIR}/image.png)
    message(FATAL_ERROR "Image not found")
endif()

# Add executable
add_executable(${PROJ_NAME} ${SRCS})

# Make the variable IMAGES_DIR to be avaliable from scripts
target_compile_definitions(${PROJ_NAME} PRIVATE IMAGES_DIR="${IMAGES_DIR}")

# Link libraries
target_link_libraries(${PROJ_NAME} ${PLATFORM_LIBS} SDL2main SDL2 SDL2_image SDL2_ttf)
