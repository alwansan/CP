#!/usr/bin/env python3
"""Reject incomplete DEX output even when Apktool and APK signing succeed."""
import argparse
import hashlib
import re
import struct
import zipfile
import zlib
from pathlib import Path


def dex_classes(data):
    def require(ok, message):
        if not ok:
            raise ValueError(message)

    require(len(data) >= 112, 'truncated DEX header')
    require(re.fullmatch(rb'dex\n0(?:35|37|38|39|40)\x00', data[:8]), 'invalid DEX magic')
    require(struct.unpack_from('<I', data, 32)[0] == len(data), 'DEX file_size mismatch')
    require(struct.unpack_from('<I', data, 36)[0] == 112, 'invalid header_size')
    require(struct.unpack_from('<I', data, 40)[0] == 0x12345678, 'invalid endian tag')
    require(hashlib.sha1(data[32:]).digest() == data[12:32], 'DEX SHA-1 mismatch')
    require(zlib.adler32(data[12:]) & 0xffffffff == struct.unpack_from('<I', data, 8)[0], 'DEX Adler-32 mismatch')
    sections = []
    for header, width in [(56, 4), (64, 4), (72, 12), (80, 8), (88, 8), (96, 32)]:
        count, offset = struct.unpack_from('<II', data, header)
        require((count == 0 and offset == 0) or (count > 0 and offset >= 112 and offset % 4 == 0 and offset + count * width <= len(data)), 'invalid DEX section bounds')
        sections.append((count, offset))
    data_size, data_off = struct.unpack_from('<II', data, 104)
    require(data_off >= 112 and data_off + data_size == len(data), 'invalid data section')
    map_off = struct.unpack_from('<I', data, 52)[0]
    require(map_off >= data_off and map_off % 4 == 0 and map_off + 4 <= len(data), 'invalid map offset')
    maps = struct.unpack_from('<I', data, map_off)[0]
    require(maps > 0 and map_off + 4 + maps * 12 <= len(data), 'invalid map size')
    previous = -1
    seen = set()
    for i in range(maps):
        kind, unused, count, offset = struct.unpack_from('<HHII', data, map_off + 4 + i * 12)
        require(kind not in seen and unused == 0 and count > 0 and previous <= offset < len(data), 'invalid map entry')
        seen.add(kind)
        previous = offset
    strings_n, strings_off = sections[0]
    types_n, types_off = sections[1]
    classes_n, classes_off = sections[5]
    result = set()
    for i in range(classes_n):
        type_idx = struct.unpack_from('<I', data, classes_off + i * 32)[0]
        require(type_idx < types_n, 'invalid class type index')
        string_idx = struct.unpack_from('<I', data, types_off + type_idx * 4)[0]
        require(string_idx < strings_n, 'invalid descriptor string index')
        offset = struct.unpack_from('<I', data, strings_off + string_idx * 4)[0]
        require(data_off <= offset < len(data), 'invalid string offset')
        for _ in range(5):
            require(offset < len(data), 'truncated string length')
            byte = data[offset]
            offset += 1
            if byte < 128:
                break
        else:
            raise ValueError('invalid string length')
        end = data.find(b'\x00', offset)
        require(end >= offset, 'unterminated class descriptor')
        descriptor = data[offset:end].decode('ascii')
        require(descriptor.startswith('L') and descriptor.endswith(';') and descriptor not in result, 'invalid/duplicate class descriptor')
        result.add(descriptor)
    return result


def verify(apk, smali_root):
    expected = {}
    for folder in sorted(smali_root.glob('smali*')):
        if not folder.is_dir():
            continue
        suffix = folder.name.removeprefix('smali').removeprefix('_classes')
        name = 'classes' + suffix + '.dex'
        definitions = []
        for source in folder.rglob('*.smali'):
            match = re.search(r'^\.class\s+.*?(L[^\s]+;)', source.read_text(), re.M)
            if match:
                definitions.append(match[1])
        if len(definitions) != len(set(definitions)):
            raise ValueError('duplicate Smali class in ' + folder.name)
        expected[name] = set(definitions)
    total = set()
    with zipfile.ZipFile(apk) as archive:
        names = [n for n in archive.namelist() if re.fullmatch(r'classes(?:[2-9]|[1-9][0-9]+)?\.dex', n)]
        if len(names) != len(set(names)) or set(names) != set(expected):
            raise ValueError('APK DEX entries differ from Smali directories')
        for name in sorted(names):
            try:
                classes = dex_classes(archive.read(name))
                if classes != expected[name]:
                    raise ValueError('class inventory mismatch: missing=' + str(sorted(expected[name] - classes)[:5]) + ' extra=' + str(sorted(classes - expected[name])[:5]))
                if total & classes:
                    raise ValueError('duplicate classes across DEX files')
                total.update(classes)
                print('PASS', name, len(classes), 'class definitions; header, digests, bounds and source inventory')
            except ValueError as error:
                raise ValueError(name + ': ' + str(error)) from error
    for name in ['Lcom/shabakaty/downloader/j32;', 'Lcom/shabakaty/cinemana/CinemanaApplication;']:
        if name not in total:
            raise ValueError('missing startup class: ' + name)
    print('PASS packaged DEX integrity:', len(names), 'DEX files,', len(total), 'classes')


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('apk', type=Path)
    parser.add_argument('--smali-root', type=Path, required=True)
    args = parser.parse_args()
    try:
        verify(args.apk, args.smali_root)
    except (ValueError, zipfile.BadZipFile) as error:
        parser.exit(1, 'ERROR: ' + str(error) + '\n')
