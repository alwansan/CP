#!/usr/bin/env python3
"""Read-only check of the actual legacy Room migration graph in original Smali.

Only verifies registration, version pairs and key transformations. It never
opens user databases and does not claim full production migration parity.
"""
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[2]
SMALI = ROOT / "Cinemana_PATCH252_Project/app/smali/com/shabakaty/downloader"
APP_IMPL = ROOT / "Cinemana_PATCH252_Project/app/smali/com/shabakaty/cinemana/data/db/AppDatabase_Impl.smali"
DOWNLOADS_IMPL = SMALI / "data/db/DownloadsDatabase_Impl.smali"


def require(condition: bool, message: str) -> None:
    if not condition:
        raise AssertionError(message)


def method(source: str, signature: str) -> str:
    parts = source.split(signature)
    require(len(parts) == 2, f"missing or ambiguous Smali method: {signature}")
    require(".end method" in parts[1], f"unterminated method: {signature}")
    return parts[1].split(".end method", 1)[0]


def check_version(source: str, expected: int, label: str) -> None:
    body = method(source, ".method public d(Lcom/shabakaty/downloader/bm0;)")
    literal = "const/4 v2, 0x" + format(expected, "x")
    require(literal in body, f"{label}: schema callback version changed")
    require(re.search(
        r"invoke-direct \{v1, p0, v2\}, L[^;\n]*Impl\$a;-><init>",
        body,
    ), f"{label}: version not wired into generated Room callback")
    print(f"ROOM_MIGRATIONS_PASS: {label} generated callback version={expected}")


def check_edge(path: Path, before: int, after: int) -> None:
    body = method(path.read_text(encoding="utf-8"),
                  ".method public constructor <init>()V")
    first = re.search(r"const/4 v0, 0x([0-9a-f]+)", body)
    second = re.search(r"const/4 v1, 0x([0-9a-f]+)", body)
    require(first is not None and second is not None,
            f"{path.name}: missing migration versions")
    require((int(first.group(1), 16), int(second.group(1), 16))
            == (before, after), f"{path.name}: expected {before}->{after}")
    require("Lcom/shabakaty/downloader/ht2;-><init>(II)V" in body
            or "Lcom/shabakaty/downloader/o00;-><init>(IILcom/shabakaty/downloader/nn0;)V" in body,
            f"{path.name}: migration constructor changed")
    print(f"ROOM_MIGRATIONS_PASS: {path.name} edge={before}->{after}")


def main() -> None:
    app = APP_IMPL.read_text(encoding="utf-8")
    downloads = DOWNLOADS_IMPL.read_text(encoding="utf-8")
    check_version(app, 5, "AppDatabase")
    check_version(downloads, 2, "DownloadsDatabase")

    check_edge(SMALI / "it2$a.smali", 1, 2)
    check_edge(SMALI / "jt2.smali", 2, 3)
    check_edge(SMALI / "o00$a.smali", 3, 4)
    check_edge(SMALI / "o00$b.smali", 4, 5)
    check_edge(SMALI / "data/db/a.smali", 1, 2)

    app_provider = method((SMALI / "km0.smali").read_text(encoding="utf-8"),
                          ".method public get()Ljava/lang/Object;")
    markers = (
        "Lcom/shabakaty/downloader/it2;->q:Lcom/shabakaty/downloader/ht2;",
        "Lcom/shabakaty/downloader/it2;->p:Lcom/shabakaty/downloader/kf2;",
        "Lcom/shabakaty/downloader/mt2;->a:Lcom/shabakaty/downloader/kf2;",
        "Lcom/shabakaty/downloader/mt2;->b:Lcom/shabakaty/downloader/kf2;",
    )
    places = [app_provider.find(m) for m in markers]
    require(all(p >= 0 for p in places) and places == sorted(places),
            "AppDatabase provider no longer registers 1->2->3->4->5 in order")
    require("new-array v1, v1, [Lcom/shabakaty/downloader/ht2;" in app_provider
            and "const/4 v1, 0x4" in app_provider,
            "AppDatabase migration array no longer has four entries")

    jt2 = (SMALI / "jt2.smali").read_text(encoding="utf-8")
    require('const-string v0, "SELECT * FROM DownloadItem"' in jt2
            and "Lcom/shabakaty/downloader/ea2;->b(Ljava/lang/String;)" in jt2
            and "Lcom/shabakaty/cinemana/data/db/downloads/CinemanaDownloadItem;" in jt2,
            "AppDatabase 2->3 JSON parsing and entity remap changed")

    kt2 = (SMALI / "kt2.smali").read_text(encoding="utf-8")
    for token in ("ALTER TABLE CinemanaDownloadItem RENAME TO temp_cinemana_download_item",
                  "isSpecial", "isMock", "isDeleted", "isAddedToWatchLater",
                  "DROP TABLE temp_cinemana_download_item"):
        require(token in kt2, f"AppDatabase 3->4 mapping changed: {token}")
    lt2 = (SMALI / "lt2.smali").read_text(encoding="utf-8")
    require("ALTER TABLE TranslationDB RENAME TO SubtitleDb" in lt2,
            "AppDatabase 4->5 subtitle rename changed")

    auto = (SMALI / "data/db/a.smali").read_text(encoding="utf-8")
    for sql in ("CREATE TABLE IF NOT EXISTS `_new_Downloads`",
                "INSERT INTO `_new_Downloads`", "DROP TABLE `Downloads`",
                "RENAME TO `Downloads`",
                "CREATE UNIQUE INDEX IF NOT EXISTS `id` ON `Downloads`"):
        require(sql in auto, f"Downloads auto migration 1->2 changed: {sql}")
    downloads_auto = method(downloads, ".method public e()Ljava/util/List;")
    require("Lcom/shabakaty/downloader/data/db/a;-><init>()V" in downloads_auto,
            "Downloads auto migration no longer registered")
    print("ROOM_MIGRATIONS_PASS: AppDatabase 4 migrations, DownloadsDatabase 1")
    print("ROOM_MIGRATIONS_PASS: SQL and JSON migration hazards identified")


if __name__ == "__main__":
    main()
