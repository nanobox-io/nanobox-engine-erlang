FROM nanobox/build

# Remove existing engines, we don't want to test those
RUN rm -rf /opt/engines/*

# Create folders for this engine
RUN mkdir -p /opt/engines/template/bin && \
    mkdir -p /opt/engines/template/lib && \
    mkdir -p /opt/engines/template/templates

# Add in this engine's files
ADD bin/. /opt/engines/template/bin
ADD lib/. /opt/engines/template/lib
ADD templates/. /opt/engines/template/templates