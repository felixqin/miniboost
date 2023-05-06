
add_definitions(-DBOOST_THREAD_BUILD_LIB)

AUX_SOURCE_DIRECTORY(atomic/src DIR_SRCS)
AUX_SOURCE_DIRECTORY(chrono/src DIR_SRCS)
AUX_SOURCE_DIRECTORY(date_time/src/gregorian DIR_SRCS)
AUX_SOURCE_DIRECTORY(date_time/src/posix_time DIR_SRCS)
AUX_SOURCE_DIRECTORY(exception/src DIR_SRCS)
AUX_SOURCE_DIRECTORY(regex/src DIR_SRCS)
AUX_SOURCE_DIRECTORY(smart_ptr/src DIR_SRCS)
AUX_SOURCE_DIRECTORY(system/src DIR_SRCS)
AUX_SOURCE_DIRECTORY(thread/src DIR_SRCS)

IF (CMAKE_SYSTEM_NAME MATCHES "Windows")
    AUX_SOURCE_DIRECTORY(thread/src/win32 DIR_SRCS)
ELSE ()
    set(DIR_SRCS ${DIR_SRCS} thread/src/pthread/once.cpp thread/src/pthread/thread.cpp)
ENDIF ()

file(GLOB_RECURSE HEADERFILES "../boost/*")
ADD_LIBRARY(miniboost ${DIR_SRCS} ${HEADERFILES})

INCLUDE_DIRECTORIES(
    ../
)

