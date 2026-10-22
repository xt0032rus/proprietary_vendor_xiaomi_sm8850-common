# dolby/ — imported OnePlus Dolby HAL blobs

Moved here from `vendor_lunaris_dolby` so that repo is no longer needed.
Blobs are already patched (SONAME / NEEDED); `proprietary-files.txt` lists the
original sources + SHA-1s, `extract-files.py.reference` the fixups that were applied.
Own Soong namespace; only used when `TARGET_USES_LUNARIS_DOLBY_HAL := true`.

Not installed (32-bit only, platform is arm64-only): libhwdap_v3_6, libswdap_v3_6,
libstagefright_soft_ddpdec.
Requires a `libbase_shim` module (old android::base::LogMessage ABI) from the ROM.
