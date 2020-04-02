# Dockerfile for building your application.
# Defines the final image that contains content from both the image and template.

FROM registry.access.redhat.com/ubi7/ubi-minimal

WORKDIR /project

COPY . ./

WORKDIR /project/userapp

# Pass control your application
CMD ["/bin/sh", "/project/start.sh"]
