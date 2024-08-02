# Use a lightweight base image with Python installed
FROM python:3.9-slim

# Set environment variables
ENV PRE_COMMIT_HOME=/pre-commit
ARG PRE_COMMIT_VERSION=3.8.0

# Install pre-commit
RUN pip install pre-commit==${ PRE_COMMIT_VERSION }

# Define the working directory
WORKDIR /repo

# Entry point for running pre-commit
ENTRYPOINT ["pre-commit"]
