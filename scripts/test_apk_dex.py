#!/usr/bin/env python3
"""Regression coverage for the incomplete DEX that passed APK signing."""
import hashlib
import struct
import unittest
import zlib
from verify_apk_dex import dex_classes


def reseal(data):
    data[12:32] = hashlib.sha1(data[32:]).digest()
    struct.pack_into('<I', data, 8, zlib.adler32(data[12:]) & 0xffffffff)
    return data


def empty_dex():
    data = bytearray(140)
    data[:8] = b'dex\n035\x00'
    struct.pack_into('<III', data, 32, len(data), 112, 0x12345678)
    struct.pack_into('<I', data, 52, 112)
    struct.pack_into('<II', data, 104, 28, 112)
    struct.pack_into('<I', data, 112, 2)
    struct.pack_into('<HHII', data, 116, 0, 0, 1, 0)
    struct.pack_into('<HHII', data, 128, 0x1000, 0, 1, 112)
    return reseal(data)


class DexIntegrityTests(unittest.TestCase):
    def test_valid_fixture(self):
        self.assertEqual(dex_classes(empty_dex()), set())

    def test_zero_header_rejected(self):
        data = empty_dex()
        data[:112] = bytes(112)
        with self.assertRaisesRegex(ValueError, 'magic'):
            dex_classes(data)

    def test_truncated_output_rejected(self):
        with self.assertRaisesRegex(ValueError, 'file_size'):
            dex_classes(empty_dex()[:-1])

    def test_payload_corruption_rejected(self):
        data = empty_dex()
        data[-1] ^= 1
        with self.assertRaisesRegex(ValueError, 'SHA-1'):
            dex_classes(data)

    def test_checksum_corruption_rejected(self):
        data = empty_dex()
        data[8] ^= 1
        with self.assertRaisesRegex(ValueError, 'Adler'):
            dex_classes(data)

    def test_resealed_out_of_bounds_section_rejected(self):
        data = empty_dex()
        struct.pack_into('<II', data, 96, 1, 10000)
        with self.assertRaisesRegex(ValueError, 'bounds'):
            dex_classes(reseal(data))

    def test_resealed_invalid_map_rejected(self):
        data = empty_dex()
        struct.pack_into('<I', data, 112, 100)
        with self.assertRaisesRegex(ValueError, 'map size'):
            dex_classes(reseal(data))


if __name__ == '__main__':
    unittest.main()
