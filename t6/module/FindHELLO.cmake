# 模块一般要定义如下变量：
# <NAME>_FOUND 
# <NAME>_INCLUDE_DIR/<NAME>_INCLUDES
# <NAME>_LIBRARY/<NAME>_LIBRARIES

# 这里一定要用find_path不能用find_file
find_path(HELLO_INCLUDE_DIR hello.h /usr/include/hello /usr/local/include/hello)
find_library(HELLO_LIBRARY NAMES hello PATH /usr/lib /usr/local/lib)
if(HELLO_INCLUDE_DIR)
    message("找到hello.h ${HELLO_INCLUDE_DIR}")
endif(HELLO_INCLUDE_DIR)
if(HELLO_LIBRARY)
    message("找到libhello.so ${HELLO_LIBRARY}")
endif(HELLO_LIBRARY)

if(HELLO_INCLUDE_DIR AND HELLO_LIBRARY)
    set(HELLO_FOUND TRUE)
endif(HELLO_INCLUDE_DIR AND HELLO_LIBRARY)
if(HELLO_FOUND)
    if(NOT HELLO_FIND_QUIETLY)
        message(STATUS "found Hello: ${HELLO_LIBRARY}")
    endif(NOT HELLO_FIND_QUIETLY)
else(HELLO_FOUND)
    if(HELLO_FIND_REQUIRED)
        message(FATAL_ERROR "Could not find hello library")
    endif(HELLO_FIND_REQUIRED)
endif(HELLO_FOUND)
