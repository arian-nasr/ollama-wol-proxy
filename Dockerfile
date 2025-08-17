FROM python:3.11-slim
WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY proxy.py .
COPY config/servers.yml config/servers.yml

CMD ["python", "proxy.py"]
