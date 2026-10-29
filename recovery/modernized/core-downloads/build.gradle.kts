plugins {
    `java-library`
}
java {
    toolchain {
        languageVersion.set(JavaLanguageVersion.of(17))
    }
}
tasks.register<JavaExec>("testMkvPreflight") {
    group = "verification"
    dependsOn(tasks.named("testClasses"))
    classpath = sourceSets["test"].runtimeClasspath
    mainClass.set("com.shabakaty.cinemana.recovery.downloads.MkvPromotionPreflightTest")
}
tasks.register<JavaExec>("testMkvCoordinator") {
    group = "verification"
    dependsOn(tasks.named("testClasses"))
    classpath = sourceSets["test"].runtimeClasspath
    mainClass.set("com.shabakaty.cinemana.recovery.downloads.MkvPromotionCoordinatorTest")
}
tasks.register<JavaExec>("testLegacyDownloadResolver") {
    group = "verification"
    dependsOn(tasks.named("testClasses"))
    classpath = sourceSets["test"].runtimeClasspath
    mainClass.set("com.shabakaty.cinemana.recovery.downloads.LegacyDownloadIdentityResolverTest")
}
tasks.register<JavaExec>("testLegacyRoomV2EpisodeMetadata") {
    group = "verification"
    dependsOn(tasks.named("testClasses"))
    classpath = sourceSets["test"].runtimeClasspath
    mainClass.set("com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2EpisodeMetadataTest")
}
tasks.register<JavaExec>("testLegacyRoomV2RowWriteGuard", "testLegacyRoomV2CollectionPlanner") {
    group = "verification"
    dependsOn(tasks.named("testClasses"))
    classpath = sourceSets["test"].runtimeClasspath
    mainClass.set("com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2RowWriteGuardTest")
}
tasks.register<JavaExec>("testLegacyRoomV2CollectionPlanner") {
    group = "verification"
    dependsOn(tasks.named("testClasses"))
    classpath = sourceSets["test"].runtimeClasspath
    mainClass.set("com.shabakaty.cinemana.recovery.downloads.LegacyRoomV2CollectionPlannerTest")
}
tasks.named("check") {
    dependsOn("testMkvPreflight", "testMkvCoordinator", "testLegacyDownloadResolver", "testLegacyRoomV2EpisodeMetadata", "testLegacyRoomV2RowWriteGuard")
}
