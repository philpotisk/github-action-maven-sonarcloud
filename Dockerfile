FROM maven:3.6.2-jdk-12

LABEL "name"="Maven SonarCloud Action"
LABEL "maintainer"="Phil <philipp.potisk@danubetech.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="GitHub Action for Maven-based SonarCloud Analysis"
LABEL "com.github.actions.description"="Launches OpenJDK 12 and calls mvn verify"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
