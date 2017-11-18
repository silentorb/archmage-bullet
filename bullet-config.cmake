
set(lib_dir "${CMAKE_CURRENT_LIST_DIR}/bin/${GENERATOR_KEY}/lib")

if (MINGW)
  target_link_libraries(${CURRENT_TARGET} "${lib_dir}/libbullet.a")
elseif (MSVC)
  target_link_libraries(${CURRENT_TARGET} "${lib_dir}/libbullet.lib")
else ()
  message(FATAL_ERROR "Platform support not yet implemented.")
endif ()
include_directories(${CMAKE_CURRENT_LIST_DIR}/bin/${GENERATOR_KEY}/include)