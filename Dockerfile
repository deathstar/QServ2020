# Use Alpine as the base image
FROM alpine:latest

RUN useradd -ms /bin/bash qservuser
USER qservuser

# Install required packages
RUN apk update && apk add make cmake zlib-dev

# Copy the QServ2020 application
COPY . /qserv

WORKDIR /qserv

# Run the commands make and cmake .
RUN make && cmake .

# Expose the port used by the QServ2020 application
EXPOSE 28785

# Define environment variable
ENV NAME QServ2020

# Specify the default command to run when the container starts
CMD ["./qserv"]
