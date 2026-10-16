FROM python:3.10-slim

WORKDIR /app

COPY backend /app/backend
COPY frontend/index.html /app/index.html

RUN pip install fastapi uvicorn python-multipart reportlab openpyxl

CMD ["uvicorn", "backend.main:app", "--host", "0.0.0.0", "--port", "10000"]
