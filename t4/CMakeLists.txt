cmake_minimum_required(VERSION 3.16.3)
project(USEHELLOLIB)
add_subdirectory(src)

# ----------------- 编译时使用make test来执行测试 ---------------
add_test(mytest ${PROJECT_SOURCE_DIR}/bin/main)
enable_testing()
