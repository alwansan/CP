pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
    }
}
rootProject.name = "cinemana-source-recovery"
include(":core-video", ":android-bridge", ":legacy-native", ":legacy-resources")
include(":android-smoke", ":core-downloads", ":core-search")
