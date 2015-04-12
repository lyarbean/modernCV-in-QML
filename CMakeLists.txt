cmake_minimum_required(VERSION 2.6)
project(resume)
find_package(Qt5 REQUIRED Core Quick)

include_directories(${QT_INCLUDES} ${CMAKE_CURRENT_BINARY_DIR})

set(Resume_SRCS main.cpp)
set(CMAKE_AUTOMOC ON)

qt5_add_resources(RESOURCES qml.qrc) 
add_executable(resume ${Resume_SRCS} ${RESOURCES})

target_link_libraries(resume Qt5::Core Qt5::Quick)

install(TARGETS resume RUNTIME DESTINATION bin)
