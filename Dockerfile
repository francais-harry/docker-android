FROM buildpack-deps:20.04-scm

MAINTAINER francais.harry@gmail.com

ENV DEBIAN_FRONTEND=noninteractive

# Install library required for Android app build
# http://stackoverflow.com/questions/18928164/android-studio-cannot-find-aapt
RUN apt-get update -y && apt-get install -y --no-install-recommends \
 openjdk-8-jdk \
 lib32stdc++6 \
 lib32z1 \
 && apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/local/android-sdk-linux

ENV ANDROID_HOME /usr/local/android-sdk-linux
ENV PATH $ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH

# License file for auto download of SDK
# See https://developer.android.com/studio/intro/update.html#download-with-gradle
RUN mkdir -p $ANDROID_HOME/licenses
RUN (echo "8933bad161af4178b1185d1a37fbf41ea5269c55"; \
 echo "d56f5187479451eabf01fb78af6dfcb131a6481e"; \
 echo "24333f8a63b6825ea9c5514f83c2829b004d1fee") > $ANDROID_HOME/licenses/android-sdk-license
