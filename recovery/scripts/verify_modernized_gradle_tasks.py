#!/usr/bin/env python3
"""Quick CI guard for core-downloads Kotlin DSL test task registration.

This catches accidental extra parameters in tasks.register<JavaExec>(),
which javac-only CI cannot see, and checks all JDK regression tasks are
attached to Gradle's check lifecycle. The Android workflow still provides
the authoritative Gradle Kotlin DSL compilation.
"""
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[2]
FILE = ROOT / "recovery/modernized/core-downloads/build.gradle.kts"
EXPECTED = {
    "testMkvPreflight": "MkvPromotionPreflightTest",
    "testMkvCoordinator": "MkvPromotionCoordinatorTest",
    "testLegacyDownloadResolver": "LegacyDownloadIdentityResolverTest",
    "testLegacyRoomV2EpisodeMetadata": "LegacyRoomV2EpisodeMetadataTest",
    "testLegacyRoomV2RowWriteGuard": "LegacyRoomV2RowWriteGuardTest",
    "testLegacyRoomV2CollectionPlanner": "LegacyRoomV2CollectionPlannerTest",
}


def require(condition, message):
    if not condition:
        raise AssertionError(message)


def main():
    content = FILE.read_text(encoding="utf-8")
    declarations = [
        line.strip() for line in content.splitlines()
        if line.strip().startswith("tasks.register<JavaExec>(")
    ]
    pattern = re.compile(r'^tasks\.register<JavaExec>\("([A-Za-z0-9_]+)"\)\s*\{$')
    names = []
    for line in declarations:
        match = pattern.fullmatch(line)
        require(match is not None, "malformed Kotlin task declaration: " + line)
        names.append(match.group(1))
    require(len(names) == len(EXPECTED), "unexpected number of JavaExec tasks")
    require(set(names) == set(EXPECTED), "JavaExec task names changed or duplicated")
    for name, klass in EXPECTED.items():
        head = f'tasks.register<JavaExec>("{name}") {{'
        body = content.split(head, 1)[1].split("\n}", 1)[0]
        require('dependsOn(tasks.named("testClasses"))' in body,
                "task missing Java test classes: " + name)
        require('classpath = sourceSets["test"].runtimeClasspath' in body,
                "task missing JDK test classpath: " + name)
        require(f'.{klass}")' in body,
                "JavaExec task has unexpected test mainClass: " + name)
    lifecycle = re.findall(
        r'tasks\.named\("check"\)\s*\{\s*dependsOn\(([^)]*)\)',
        content,
    )
    require(len(lifecycle) == 1, "exactly one Gradle check dependency block required")
    listed = re.findall(r'"([A-Za-z0-9_]+)"', lifecycle[0])
    require(len(listed) == len(EXPECTED) and set(listed) == set(EXPECTED),
            "all six regression tasks must be registered with check")
    print("GRADLE_TASK_PARITY_PASS: six JavaExec tasks and check dependencies verified")
    print("GRADLE_TASK_PARITY_LIMIT: Android CI must still compile Kotlin DSL")


if __name__ == "__main__":
    main()
