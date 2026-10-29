#!/usr/bin/env python3
"""Verify original Room DB filenames in Dagger's real Smali providers.

Read-only source parity guard. Does not open databases or user data.
The Downloads filename is dynamic: it uses the last segment of the
runtime Android package name, NOT a hard-coded 'cinemana' package.
"""
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
APP_PROVIDER = ROOT / (
    "Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/km0.smali"
)
DOWNLOADS_PROVIDER = ROOT / (
    "Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader/kh0.smali"
)


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def source_between(source: str, begin: str, end: str, label: str) -> str:
    require(source.count(begin) == 1, f"{label}: missing/ambiguous beginning")
    chunk = source.split(begin, 1)[1]
    require(end in chunk, f"{label}: missing end")
    return chunk.split(end, 1)[0]


def downloads_filename(package_name: str) -> str:
    require(bool(package_name) and not package_name.endswith("."),
            "invalid package name")
    return "shabakaty." + package_name.split(".")[-1] + ".downloads.database"


def main() -> None:
    app = APP_PROVIDER.read_text(encoding="utf-8")
    downloads = DOWNLOADS_PROVIDER.read_text(encoding="utf-8")

    app_builder = source_between(
        app,
        'const-class v0, Lcom/shabakaty/cinemana/data/db/AppDatabase;',
        'Lcom/shabakaty/downloader/vt3$a;->a(',
        "AppDatabase provider",
    )
    require('const-string v2, "localDatabase.db"' in app_builder,
            "original AppDatabase filename changed")
    require(
        "Lcom/shabakaty/downloader/ut3;->a("
        "Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)" in app_builder,
        "original AppDatabase Room builder changed",
    )

    downloads_builder = source_between(
        downloads,
        'const-class v2, Lcom/shabakaty/downloader/data/db/DownloadsDatabase;',
        'Lcom/shabakaty/downloader/vt3$a;->b()',
        "DownloadsDatabase provider",
    )
    for required in (
        'const-string v4, "shabakaty."',
        'Landroid/content/Context;->getPackageName()Ljava/lang/String;',
        'const-string v4, "."',
        'Lcom/shabakaty/downloader/re4;->e0(',
        'Lcom/shabakaty/downloader/m50;->i0(',
        'const-string v1, ".downloads.database"',
        'Lcom/shabakaty/downloader/ut3;->a(',
    ):
        require(required in downloads_builder,
                f"DownloadsDatabase filename derivation changed: {required}")
    # Method m50.i0 picks the last segment after splitting packageName on "."
    require(downloads_filename("com.shabakaty.cinemana")
            == "shabakaty.cinemana.downloads.database",
            "Cinemana package-name formula changed")
    require(downloads_filename("com.shabakaty.downloader")
            == "shabakaty.downloader.downloads.database",
            "Downloader package-name formula changed")

    print("ROOM_DATABASE_NAME_PASS: AppDatabase = localDatabase.db")
    print("ROOM_DATABASE_NAME_PASS: DownloadsDatabase = "
          "shabakaty.<last_package_segment>.downloads.database")
    print("ROOM_DATABASE_NAME_PASS: both original Dagger/Room providers verified")


if __name__ == "__main__":
    main()
