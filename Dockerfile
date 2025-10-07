# Dockerfile
FROM python:3.10-slim-bookworm

# ---- Install AWS CLI v2 ----
ARG AWS_CLI_VERSION=2.17.59
RUN apt-get update \
 && apt-get install -y --no-install-recommends curl unzip ca-certificates groff less \
 && curl -fsSL "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-${AWS_CLI_VERSION}.zip" -o awscliv2.zip \
 && unzip -q awscliv2.zip \
 && ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli \
 && rm -rf awscliv2.zip aws \
 && apt-get purge -y curl unzip \
 && apt-get autoremove -y \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Install Python deps first for better build caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your app
COPY . .

CMD ["python3", "app.py"]
