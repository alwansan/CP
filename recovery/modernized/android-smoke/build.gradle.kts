plugins {
    id("com.android.application")
}
android {
    namespace = "com.shabakaty.cinemana.recovery.smoke"
    compileSdk = 35
    defaultConfig {
        applicationId = "com.shabakaty.cinemana.recovery.smoke"
        minSdk = 21
        targetSdk = 29
        versionCode = 1
        versionName = "0.1-recovery-diagnostic"
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
}
dependencies {
    implementation(project(":android-bridge"))
    implementation(project(":legacy-native"))
    implementation("androidx.media3:media3-common:1.6.1")
}
