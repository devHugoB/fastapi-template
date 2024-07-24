FROM python:3.12

COPY ./requirements.txt /requirements.txt

RUN pip install --no-cache-dir --upgrade -r requirements.txt

EXPOSE 8000

COPY ./app /app

CMD ["fastapi", "run", "app/main.py", "--port", "8000"]
