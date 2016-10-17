# wercker-docker-android
Minimium docker container to build Android app on wercker environment. Docker image is availabe in DockerHub below.
https://hub.docker.com/r/francaisharry/wercker-docker-android/

## Prerequisites
- gradle Android plugin 2.2.+
 - Version 2.2.+ is required for auto download of the Android SDK. https://developer.android.com/studio/intro/update.html#download-with-gradle

## How to build
```
./gradlew dependencies || :
./gradlew assembleDebug
```
The `dependencies` task call is workaround of SDK loading issue. See https://code.google.com/p/android/issues/detail?id=212309
