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
tasks.named("check") {
    dependsOn("testMkvPreflight", "testMkvCoordinator", "testLegacyDownloadResolver")
}
