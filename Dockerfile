FROM ubuntu:latest

MAINTAINER francais.harry@gmail.com

RUN apt-get update -y && apt-get upgrade -y 
# Install library required for Android app build
RUN apt-get install git openjdk-8-jdk -y && apt-get install lib32stdc++6 lib32z1 -y

RUN mkdir -p /usr/local/android-sdk-linux

ENV ANDROID_HOME /usr/local/android-sdk-linux
ENV PATH $ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH

# License file for auto download of SDK
# See https://developer.android.com/studio/intro/update.html#download-with-gradle
RUN mkdir -p $ANDROID_HOME/licenses
RUN echo "8933bad161af4178b1185d1a37fbf41ea5269c55" > $ANDROID_HOME/licenses/android-sdk-license
