# Headers.
find_path(BORINGSSL_INCLUDE NAMES "openssl/ssl.h" PATHS "${_VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/include" NO_DEFAULT_PATH)

# Lib "ssl".
find_library(BORINGSSL_SSL_LIB_DEBUG NAMES "ssl" PATHS "${_VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/debug/lib" NO_DEFAULT_PATH)
find_library(BORINGSSL_SSL_LIB_RELEASE NAMES "ssl" PATHS "${_VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/lib" NO_DEFAULT_PATH)

# Lib "crypto".
find_library(BORINGSSL_CRYPTO_LIB_DEBUG NAMES "crypto" PATHS "${_VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/debug/lib" NO_DEFAULT_PATH)
find_library(BORINGSSL_CRYPTO_LIB_RELEASE NAMES "crypto" PATHS "${_VCPKG_INSTALLED_DIR}/${VCPKG_TARGET_TRIPLET}/lib" NO_DEFAULT_PATH)

# Target "ssl".
add_library(boringssl::ssl UNKNOWN IMPORTED)

# Target "crypto".
add_library(boringssl::crypto UNKNOWN IMPORTED)

# Properties target "ssl".
set_target_properties(boringssl::ssl PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${BORINGSSL_INCLUDE})
set_target_properties(boringssl::ssl PROPERTIES IMPORTED_LOCATION_DEBUG ${BORINGSSL_SSL_LIB_DEBUG})
set_target_properties(boringssl::ssl PROPERTIES IMPORTED_LOCATION_RELEASE ${BORINGSSL_SSL_LIB_RELEASE})

# Properties target "crypto".
set_target_properties(boringssl::crypto PROPERTIES INTERFACE_INCLUDE_DIRECTORIES ${BORINGSSL_INCLUDE})
set_target_properties(boringssl::crypto PROPERTIES IMPORTED_LOCATION_DEBUG ${BORINGSSL_CRYPTO_LIB_DEBUG})
set_target_properties(boringssl::crypto PROPERTIES IMPORTED_LOCATION_RELEASE ${BORINGSSL_CRYPTO_LIB_RELEASE})
