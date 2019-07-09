FROM jenkins/jnlp-slave

USER root

RUN apt-get update && apt-get install software-properties-common -y --force-yes  && apt-get install add-apt-repository ppa:longsleep/golang-backports -y --force-yes && apt-get update && apt-get install golang-go -y --force-yes

USER jenkins

ENTRYPOINT ["jenkins-slave"]
