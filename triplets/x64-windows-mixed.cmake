set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE static)

if(${PORT} MATCHES "qt5")
	set(VCPKG_LIBRARY_LINKAGE dynamic)
else()
	set(VCPKG_LIBRARY_LINKAGE static)
endif()
