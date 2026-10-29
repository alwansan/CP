plugins {
    `java-library`
}
java {
    toolchain {
        languageVersion.set(JavaLanguageVersion.of(17))
    }
}
dependencies {
    implementation(project(":core-downloads"))
    implementation("com.google.code.gson:gson:2.11.0")
}
tasks.register<JavaExec>("testLegacyRoomV2GsonAdapter") {
    group = "verification"
    dependsOn(tasks.named("testClasses"))
    classpath = sourceSets["test"].runtimeClasspath
    mainClass.set("com.shabakaty.cinemana.recovery.json.LegacyRoomV2GsonAdapterTest")
}
tasks.named("check") {
    dependsOn("testLegacyRoomV2GsonAdapter")
}
