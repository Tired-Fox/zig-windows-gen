# WinRT Zig Binding Generator

This generator works with zig `v0.15.1+`. Look at the repos tags to find a matching version to the version of zig you want to use.

If you just want to use the bindings look at [`windows-zig`](https://github.com/Tired-Fox/windows-zig).

**How it works**

1. Download latest `Metadata.zip` from `Tired-Fox/winrt-json` and extract the JSON files to `metadata/`
2. Iterate the JSON, `namespace`, files and generate zig code, files, and folder that represent the structure and metadata.
3. Export common helpers in `<module>.core`
4. Re-Export `zigwin32` as `<module>.win32`
