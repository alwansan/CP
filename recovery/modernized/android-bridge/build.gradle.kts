plugins {
    id("com.android.library")
}
android {
    namespace = "com.shabakaty.cinemana.recovery.bridge"
    compileSdk = 35
    defaultConfig {
        minSdk = 21
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
}
dependencies {
    implementation(project(":core-video"))
    implementation("androidx.media3:media3-common:1.6.1")
}
