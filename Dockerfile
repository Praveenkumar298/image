FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip \
    && pip install -r requirements.txt \
    && python manage.py collectstatic --noinput

CMD ["gunicorn", "backendimage.wsgi:application", "--bind", "0.0.0.0:${PORT}"]
