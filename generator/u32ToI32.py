import sys

U32_MAX = 0xFFFFFFFF
SIGN_BIT = 0x80000000
MOD32 = 0x100000000

def u32_to_i32(n: int) -> int:
    if not (0 <= n <= U32_MAX):
        raise ValueError(f"Value {n} is not a valid u32 (0..{U32_MAX}).")
    return n - MOD32 if (n & SIGN_BIT) else n

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: u32_to_i32.py <u32 number>")
        print("Example: u32_to_i32.py 4294967295  # -> -1")
        sys.exit(1)
    val = int(sys.argv[1], 0)  # accepts decimal or 0x... hex
    print(u32_to_i32(val))
