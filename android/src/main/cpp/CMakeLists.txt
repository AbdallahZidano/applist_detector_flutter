cmake_minimum_required(VERSION 3.4.1)

project(applist_detector)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(applist_detector SHARED
    src/environment.cpp
    src/file_detection.cpp)

target_include_directories(applist_detector PRIVATE
    external/linux_syscall_support
    src)

find_library(log-lib log)
target_link_libraries(applist_detector PRIVATE ${log-lib})

set_target_properties(applist_detector PROPERTIES
    CXX_STANDARD 17
    CXX_STANDARD_REQUIRED YES
    CXX_EXTENSIONS NO) 