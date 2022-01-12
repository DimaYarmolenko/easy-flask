FROM python:3.9-slim
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /
COPY /app /app

EXPOSE 5000

CMD ["flask", "run"]