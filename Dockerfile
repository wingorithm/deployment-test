FROM python:3.10-slim-bullseye

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .

# Upgrade pip and setuptools
RUN pip install --upgrade pip setuptools

# Install Python dependencies (try using pre-built wheels)
RUN pip install --no-cache-dir --prefer-binary -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the port that FastAPI runs on
EXPOSE 8000

# Command to run the FastAPI app using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
