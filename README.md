# [Vcpkg](https://github.com/microsoft/vcpkg) long time support fork.
Vcpkg fork for my projects with long time support. Maybe you see [original doc](README_main.md)?

### New ports:
- [Boost.Socks](https://github.com/CPPAlliance/socks)
- [Boost.Buffers](https://github.com/CPPAlliance/buffers)
- [Boost.Http.Proto](https://github.com/CPPAlliance/http_proto)

### Changes:
- OpenSSL my be compiled with weak ciphers support, use feature option "weak-ciphers".
- BoringSSL may be found with cmake targets.

### Fixes:
- LibLZMA not copying pbd after build at some scenarious.

### Example. Bootstrap and disable telemetry.
```bash
bootstrap-vcpkg.bat -disableMetrics
```

### Example. Install package.
```bash
vcpkg install openssl --triplet=x64-windows-static --host-triplet=x64-windows-static --clean-after-build --no-binarycaching
```

### Example. Remove package.
```bash
vcpkg remove openssl --triplet=x64-windows-static --host-triplet=x64-windows-static
```
