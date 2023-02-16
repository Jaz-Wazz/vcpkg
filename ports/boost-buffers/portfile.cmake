vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO CPPAlliance/buffers
	REF fc274721765ec04780ccb0e32e35fc3e17e6cee9
	SHA512 5d2cb33b7ec10c5013c2189efa60705e7c1ec81e94b4a8fa3678b7e1cca753d09c89b434c8ee16f4329a5ace3d0a4b73c7291ad9f6cf037ee085e377e602f420
	HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
