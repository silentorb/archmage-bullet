
set(lib_dir "${CMAKE_CURRENT_LIST_DIR}/bin/${GENERATOR_KEY}/lib")

list(APPEND libraries
  #  Bullet2FileLoader
  Bullet3Collision
  Bullet3Common
  Bullet3Dynamics
  Bullet3Geometry
  #  Bullet3OpenCL_clew
  BulletDynamics
  BulletCollision
  BulletInverseDynamics
  BulletSoftBody
  LinearMath
  )

if (MINGW)
  foreach (lib IN LISTS libraries)
    target_link_libraries(${CURRENT_TARGET} "${lib_dir}/lib${lib}.a")
  endforeach ()
elseif (MSVC)
  set(DEBUG_SUFFIX _Debug)

  foreach (lib IN LISTS libraries)
    target_link_libraries(${CURRENT_TARGET} "${lib_dir}/${lib}${DEBUG_SUFFIX}.lib")
  endforeach (lib)
else ()
  message(FATAL_ERROR "Platform support not yet implemented.")
endif ()

include_directories(${CMAKE_CURRENT_LIST_DIR}/bin/${GENERATOR_KEY}/include/bullet)