plugins {
    `java-library`
}

java {
    toolchain {
        languageVersion.set(JavaLanguageVersion.of(17))
    }
}

tasks.register<JavaExec>("testSearchState") {
    group = "verification"
    dependsOn(tasks.named("testClasses"))
    classpath = sourceSets["test"].runtimeClasspath
    mainClass.set("com.shabakaty.cinemana.recovery.search.SearchStateMachineTest")
}

tasks.named("check") {
    dependsOn("testSearchState")
}
