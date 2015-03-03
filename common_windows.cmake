set(CMAKE_SYSTEM_NAME Windows)

get_filename_component(pwd "${CMAKE_CURRENT_LIST_FILE}" PATH)

string(TOLOWER "${CMAKE_HOST_SYSTEM_NAME}" host)

set(ENV{PATH} "${pwd}/tool/${host}${sep}$ENV{PATH}")
list(INSERT CMAKE_FIND_ROOT_PATH 0 ${pwd})
list(INSERT CMAKE_INCLUDE_PATH 0 ${pwd}/include)
list(INSERT CMAKE_LIBRARY_PATH 0
  ${pwd}/lib/${targ}-${arch}${__build_config}
  ${pwd}/lib/${targ}-${arch}
  ${pwd}/lib/common-${arch})

foreach(dir ${CMAKE_LIBRARY_PATH})
  file(GLOB dlls "${dir}/*.dll")
  list(APPEND INSTALL_SHARED_LIBS ${dlls})
endforeach()
