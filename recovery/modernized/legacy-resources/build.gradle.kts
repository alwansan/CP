plugins {
    id("com.android.library")
}
android {
    namespace = "com.cinemana.pro"
    compileSdk = 35
    defaultConfig {
        minSdk = 21
        vectorDrawables.useSupportLibrary = true
    }
    // Never edit the original APKTool tree. Stage only the two attr duplicates
    // provided by AndroidX Core when the source-first Lifecycle bridge is used.
    sourceSets.getByName("main").res.setSrcDirs(
        listOf(layout.buildDirectory.dir("generated/legacy-res").get().asFile)
    )
    sourceSets.getByName("main").assets.srcDirs(
        file("../../../Cinemana_PATCH252_Project/app/assets")
    )
}

dependencies {
    implementation(project(":core-search"))
    implementation("androidx.lifecycle:lifecycle-livedata:2.8.7")
}

val prepareLegacyResources by tasks.registering(Exec::class) {
    val originalRes = file("../../../Cinemana_PATCH252_Project/app/res")
    val stagedRes = layout.buildDirectory.dir("generated/legacy-res")
    inputs.dir(originalRes)
    inputs.file(file("../../scripts/prepare_legacy_resources.py"))
    outputs.dir(stagedRes)
    commandLine(
        "python3",
        file("../../scripts/prepare_legacy_resources.py").absolutePath,
        originalRes.absolutePath,
        stagedRes.get().asFile.absolutePath
    )
}
tasks.named("preBuild") {
    dependsOn(prepareLegacyResources)
}
