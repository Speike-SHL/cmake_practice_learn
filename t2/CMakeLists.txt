cmake_minimum_required(VERSION 3.16.3)
project(HELLO)

# 指定子目录为src
add_subdirectory(src)

#-------------------------- 安装 COPYRIGHT 和 README ---------------------------
install(FILES COPYRIGHT README DESTINATION  share/doc/Cmake_Practice_learn/t2)
#-------------------------- 安装 runhello.sh -----------------------------------
install(PROGRAMS runhello.sh DESTINATION bin) 
#-------------------------- 安装 doc目录下的内容 --------------------------------
install(DIRECTORY doc/ DESTINATION share/doc/Cmake_Practice_learn/t2/doc)
