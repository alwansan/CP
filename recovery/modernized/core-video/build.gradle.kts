plugins {
    `java-library`
}
java {
    toolchain {
        languageVersion.set(JavaLanguageVersion.of(17))
    }
}
tasks.register<JavaExec>("testHigh10") {
    group = "verification"
    description = "Run the pure Java High10 detector regression tests."
    dependsOn(tasks.named("testClasses"))
    classpath = sourceSets["test"].runtimeClasspath
    mainClass.set("com.shabakaty.cinemana.player.H264High10DetectorTest")
}
tasks.named("check") {
    dependsOn("testHigh10")
}
