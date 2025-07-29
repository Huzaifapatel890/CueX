mkdir -p app/src/main/java/com/cuex/plugin
mkdir -p app/src/main/res/xml

echo "rootProject.name = 'CueXPlugin'
include ':app'" > settings.gradle

echo "buildscript {
    repositories { google(); mavenCentral() }
    dependencies { classpath 'com.android.tools.build:gradle:7.4.2' }
}
allprojects { repositories { google(); mavenCentral() } }" > build.gradle

echo "plugins { id 'com.android.application' }
android {
    compileSdk 33
    defaultConfig {
        applicationId \"com.cuex.plugin\"
        minSdk 21
        targetSdk 33
        versionCode 1
        versionName \"1.0\"
    }
    buildTypes { release { minifyEnabled false } }
}
dependencies { }" > app/build.gradle
