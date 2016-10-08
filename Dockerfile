FROM ubuntu:latest

MAINTAINER francais.harry@gmail.com

RUN apt-get update -y && apt-get upgrade -y && apt-get install git openjdk-8-jdk -y

RUN mkdir -p /usr/local/android-sdk-linux

ENV ANDROID_HOME /usr/local/android-sdk-linux
ENV PATH $ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH

