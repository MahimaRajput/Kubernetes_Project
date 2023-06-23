From python:3.9-slim-buster

WORKDIR /app

COPY requirement.txt .

RUN pip install --no-cache-dir -r requirement.txt

COPY . .

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 8000

CMD ["flask", "run"]
