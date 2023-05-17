#设置项目名称 HELLO
project(HELLO)

#变量SRC_LIST 赋值 hellocmake.cpp
set(SRC_LIST hellocmake.cpp)

#message 输出log 
#SEND_ERROR，产生错误，生成过程被跳过
#SATUS，输出前缀为—的信息
#FATAL_ERROR，立即终止所有 cmake 过程
#${}取出变量值
#隐式变量 HELLO_SOURCE_DIR 即  <项目名称>_SOURCE_DIR
# BINARY_DIR 构建目录(运行cmake命令的目录)  SOURCE_DIR 源代码目录(project指令所在CmakeLists.txt文件的目录)
message(STATUS "This is BINARY dir" ${HELLO_BINARY_DIR})
message(STATUS "This is SOURCE dir" ${HELLO_SOURCE_DIR})
# HELLO_BINARY_DIR 和 PROJECT_BINARY_DIR 值一样，都是在执行project(HELLO)命令时生成的
# 为了方便,一般都使用后者
message(STATUS "This is BINARY dir" ${PROJECT_BINARY_DIR})
message(STATUS "This is SOURCE dir" ${PROJECT_SOURCE_DIR})

# 生成可执行文件hellocmake
add_executable(hellocmake ${SRC_LIST})
