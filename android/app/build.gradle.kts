import java.util.Properties

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")

if (keystorePropertiesFile.exists()) {
    keystorePropertiesFile.inputStream().use {
        keystoreProperties.load(it)
    }
} else {
    println("WARNING: key.properties not found. Release builds will not be signed.")
}

android {
    namespace = "com.example.ieca_mobile"
    compileSdk = flutter.compileSdkVersion
    //ndkVersion = flutter.ndkVersion
    ndkVersion = "29.0.13113456"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.ieca_mobile"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    signingConfigs {
        create("release") {
            if (keystoreProperties.isNotEmpty()) {
                val storeFileProperty = keystoreProperties["storeFile"] as String?
                val storePasswordProperty = keystoreProperties["storePassword"] as String?
                val keyAliasProperty = keystoreProperties["keyAlias"] as String?
                val keyPasswordProperty = keystoreProperties["keyPassword"] as String?

                if (storeFileProperty != null && storePasswordProperty != null && keyAliasProperty != null && keyPasswordProperty != null) {
                    storeFile = file(storeFileProperty)
                    storePassword = storePasswordProperty
                    keyAlias = keyAliasProperty
                    keyPassword = keyPasswordProperty
                } else {
                    println("ERROR: Missing one or more keystore properties in key.properties.")
                }
            }
        }
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            // signingConfig = signingConfigs.getByName("debug")
            signingConfig = signingConfigs.getByName("release")
        }
    }
}

flutter {
    source = "../.."
}
