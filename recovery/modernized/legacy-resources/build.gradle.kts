plugins {
    id("com.android.library")
}
android {
    namespace = "com.cinemana.pro"
    compileSdk = 35
    defaultConfig {
        minSdk = 21
    }
    sourceSets.getByName("main").res.srcDirs(
        file("../../../Cinemana_PATCH252_Project/app/res")
    )
    sourceSets.getByName("main").assets.srcDirs(
        file("../../../Cinemana_PATCH252_Project/app/assets")
    )
}
