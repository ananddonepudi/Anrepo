FROM python:3.9-slim

# Install required libraries
RUN pip install --no-cache-dir pandas pyarrow

# Workdir for script
WORKDIR /app

# Copy script into image
COPY convert.py /app/

# Run script by default
CMD ["python3", "convert.py"]
