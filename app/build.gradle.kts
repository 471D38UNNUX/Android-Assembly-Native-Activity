plugins {
    alias(libs.plugins.android.application)
}

android {
    namespace = "com.assemblynativeactivity"
    compileSdkPreview = "Baklava"

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
            version = "3.31.1"
        }
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_23
        targetCompatibility = JavaVersion.VERSION_23
    }
    buildToolsVersion = "36.0.0 rc3"
    ndkVersion = "28.0.12674087 rc2"
}
