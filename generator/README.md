# WinRT Zig Binding Generator

This generator works with zig `v0.15.1+`. Look at the repos tags to find a matching version to the version of zig you want to use.

**How it works**

1. Download latest `Metadata.zip` from `Tired-Fox/winrt-json` and extract the json files to `metadata/`
2. Iterate the json, `namespace`, files and generate zig code, files, and folder that represent the structure and metadata.
3. Export common helpers in `windows.core`
4. Re-Export `zigwin32` as `windows.win32`
