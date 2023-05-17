set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# 上节课安装的hello.h头文件路径
include_directories(/usr/local/include/hello)

# 上节课安装的libhello.so的链接库路径
link_directories(/usr/local/lib)

add_executable(main main.cpp)
target_link_libraries(main libhello.a)
