FROM ubuntu:latest

RUN useradd -ms /bin/bash qservuser
USER qservuser

WORKDIR /qserv

# Copy the QServ2020 application
COPY ./qserv /qserv

# Define environment variable
ENV NAME QServ2020

# Expose the port used by the QServ2020 application
EXPOSE 28785

# Set the default command to run the application
CMD ["./qserv"]