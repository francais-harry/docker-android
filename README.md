# docker-android
Minimum docker container to build Android apps. This was made to use on [werkcer.com](https://app.wercker.com/) CI environment, but the container does not contain anything specific to the werker, this should work on other CI environment or on local machine. This container especially aims to clean from the software license point of view as much as possible, no deliverables from Google is included. Instead, Android build tool chain will be downloaded during the gradle build process. Note that the license agreement will be automatically accepted during the gradle build. Docker image is available in DockerHub below.
https://hub.docker.com/r/francaisharry/wercker-docker-android/

## Prerequisites
- gradle Android plugin 2.2.+
 - Version 2.2.+ is required for auto download of the Android SDK. Note that this container automatically accepts the license agreement of Android SDK etc.
https://developer.android.com/studio/intro/update.html#download-with-gradle

## How to build
```
git clone <repository> .
./gradlew dependencies --no-daemon || :
./gradlew assembleDebug --no-daemon
```
The `dependencies` task call is workaround of SDK loading issue. See https://code.google.com/p/android/issues/detail?id=212309

Also it is recommended not to use gradle daemon in CI environment. https://docs.gradle.org/current/userguide/gradle_daemon.html#when_should_i_not_use_the_gradle_daemon
