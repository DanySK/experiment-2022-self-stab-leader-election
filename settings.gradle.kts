plugins {
    id("com.gradle.enterprise") version "3.10"
}

gradleEnterprise {
    buildScan {
        termsOfServiceUrl = "https://gradle.com/terms-of-service"
        termsOfServiceAgree = "yes"
        publishOnFailure()
    }
}

enableFeaturePreview("VERSION_CATALOGS")
rootProject.name = "experiment-2022-selfstab-leader-election"
