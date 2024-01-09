# Use the official Jenkins LTS (Long Term Support) base image
FROM jenkins/jenkins:lts

# Skip the initial setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Install Jenkins plugins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Setting up Jenkins configuration as code
COPY --chown=jenkins:jenkins jenkins.yaml /var/jenkins_home/casc_configs/

# Install necessary tools (optional)
USER root
RUN apt-get update && apt-get install -y \
    docker \
    sudo \
 && rm -rf /var/lib/apt/lists/*
USER jenkins

# Expose port 8080 for Jenkins web UI
EXPOSE 8080
