FROM python:3.12-slim

WORKDIR /app

# Copy project configuration and readme
COPY pyproject.toml README.md ./

# Copy the application code
COPY readeckbot/ ./readeckbot/

# Install the application
RUN pip install --no-cache-dir .

# Run the bot
CMD ["python", "-m", "readeckbot"]
