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
    sourceSets.getByName("main").res.srcDirs(
        file("../../../Cinemana_PATCH252_Project/app/res")
    )
    sourceSets.getByName("main").assets.srcDirs(
        file("../../../Cinemana_PATCH252_Project/app/assets")
    )
}

dependencies {
    implementation(project(":core-search"))
    implementation("androidx.appcompat:appcompat:1.7.0")
    implementation("androidx.lifecycle:lifecycle-livedata:2.8.7")
    implementation("com.google.android.material:material:1.12.0")
}
