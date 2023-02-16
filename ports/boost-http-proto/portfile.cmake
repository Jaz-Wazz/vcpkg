vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO CPPAlliance/http_proto
	REF 5b7e941eda42362cf5b7bd0f993a14002a961195
	SHA512 48fba1df85cea655ac870b0137a5a5bd2813308d710ac9773b0718047b7be30e35f414d6136b220c3f0a04d028af9b7c7d1c7f519de7cc9e0883f00593d213fe
	HEAD_REF develop
)

include(${CURRENT_INSTALLED_DIR}/share/boost-vcpkg-helpers/boost-modular-headers.cmake)
boost_modular_headers(SOURCE_PATH ${SOURCE_PATH})
