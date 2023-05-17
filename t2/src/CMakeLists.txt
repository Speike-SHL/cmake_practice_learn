# 指定最后输出二进制可执行文件放置在构建目录下的bin文件夹
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
# 指定最后输出的链接库文件放置在构建目录下的lib文件夹
set(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)

add_executable(hellocmake hellocmake.cpp)

#------------------------ 安装编译后的可执行文件 -------------------------
install(TARGETS hellocmake
    RUNTIME DESTINATION bin)
