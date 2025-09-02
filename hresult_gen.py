#!/usr/bin/env python3
"""
Extract HRESULT constants from winerror.h into JSON.

Usage:
  python extract_hresults.py --header
  "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\<ver>\\um\\winerror.h"
  -o hresults.json
"""

import argparse
import json
import os
from pathlib import Path


def main():
    """entry point"""

    ap = argparse.ArgumentParser(description="Extract HRESULT constants from winerror.h to JSON.")
    ap.add_argument("--header", "-i", required=True, help="Path to winerror.h")
    ap.add_argument("--output", "-o", required=True, help="Output JSON file")
    args = ap.parse_args()

    if not os.path.isfile(args.header):
        raise SystemExit(f"Header not found: {args.header}")

    dedup = set()
    hresults = []
    with Path.open(args.header, encoding="utf8") as file:
        for line in file:
            if line.startswith("#define"):
                parts = line.split(' ', 2)
                if len(parts) == 3:
                    name = parts[1].strip()
                    value = parts[2].strip()
                    if not value.startswith("_HRESULT_TYPEDEF_"):
                        continue
                    value = value[18:len(value)-2]
                    if name not in dedup:
                        dedup.add(name)
                        hresults.append((name, value))
                        print(name, value)

    with open(args.output, "w", encoding="utf-8") as f:
        json.dump(list(hresults), f, indent=2, ensure_ascii=False)

    print(f"Wrote {len(hresults)} HRESULTs to {args.output}")


if __name__ == "__main__":
    main()
