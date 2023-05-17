set(LIB_SRC hello.cpp)

# 更改动态链接库生成目录
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

# 生成动态链接库
add_library(hello SHARED ${LIB_SRC})
# 生成静态链接库, 只用add_library无法生成同名的动静态链接库
add_library(hello_static STATIC ${LIB_SRC})
# 添加该指令生成同名动静态链接库
set_target_properties(hello_static PROPERTIES OUTPUT_NAME "hello")

# 动态库版本号
set_target_properties(hello PROPERTIES VERSION 1.2 SOVERSION 1)   # 生成.so.1.2, 同时生成.so.1链接到.so.1.2, 然后将.so链接到.so.1
# set_target_properties(hello PROPERTIES VERSION 1.2) # 生成.so.1.2并将.so链接到.so.1.2


#------------------- 安装动态链接库 -----------------------
install(TARGETS hello hello_static 
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib)
#------------------- 安装头文件 ---------------------------
install(FILES hello.h DESTINATION include/hello)
