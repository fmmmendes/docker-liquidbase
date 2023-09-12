FROM liquibase/liquibase:4.19.0

# Test if working
RUN liquibase --version

# Copy db
COPY ./db /liquibase/db/

# Copy commands.sh
COPY ./build/commands.sh /liquibase/

ARG LB_DEFAULTS_FILE=${LB_DEFAULTS_FILE}
ENV LB_DEFAULTS_FILE=${LB_DEFAULTS_FILE}

#ARG CONN=jdbc:postgresql://host.docker.internal:5432/postgres
ARG CONN=jdbc:postgresql://localhost:5432/postgres
ENV CONN=${CONN}

#ARG USERNAME=postgres
ARG USERNAME=${USERNAME}
ENV USERNAME=${USERNAME}

#ARG PASSWORD=postgres
ARG PASSWORD=${PASSWORD}
ENV PASSWORD=${PASSWORD}

# Run commands.sh
CMD ["bash", "/liquibase/commands.sh"]