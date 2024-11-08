plugins {
    alias(libs.plugins.android.application)
}

android {
    namespace = "com.assemblynativeactivity"
    compileSdk = 35

    defaultConfig {
        applicationId = "com.assemblynativeactivity"
        minSdk = 24

        ndk {
            abiFilters += "x86_64"
            abiFilters += "arm64-v8a"
        }

        externalNativeBuild {
            cmake {
                cFlags += "-std=c17"
            }
        }
        targetSdk = 35
    }

    externalNativeBuild {
        cmake {
            path = file("CMakeLists.txt")
            version = "3.31.0"
        }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    buildToolsVersion = "35.0.0"
    ndkVersion = "28.0.12433566 rc1"
}
