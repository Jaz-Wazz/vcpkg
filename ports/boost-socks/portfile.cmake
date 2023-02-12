vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO CPPAlliance/socks
	REF 713ae06adf39983f90a7d02b2d6ed29038b45284
	SHA512 9d81d1ad8e41a12f76cc288bf3e3de18c4bcdb2108537475c33af49701c0651697b296714cb09afb33424db59337cd290c9afc78cd0dbfbace9468d30aa1a454
	HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
