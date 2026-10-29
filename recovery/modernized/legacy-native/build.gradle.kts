plugins {
    id("com.android.library")
}
android {
    namespace = "com.shabakaty.cinemana.recovery.nativebinaries"
    compileSdk = 35
    defaultConfig {
        minSdk = 21
    }
    sourceSets.getByName("main").jniLibs.srcDirs(
        file("../../../Cinemana_PATCH252_Project/app/lib")
    )
}
