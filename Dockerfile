FROM ubuntu:latest

MAINTAINER francais.harry@gmail.com

RUN apt-get update -y && apt-get upgrade -y && apt-get install git openjdk-8-jdk -y
