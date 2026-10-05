FROM python:3.11-slim

WORKDIR /app

COPY backend /app/backend
COPY index.HTML /app/index.HTML

RUN pip install fastapi uvicorn python-multipart reportlab openpyxl

WORKDIR /app/backend

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]