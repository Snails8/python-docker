FROM python:3.9.0-buster

ENV PYTHONUNBUFFERED=1
ARG DISH_TYPE_MAP
ENV DISH_TYPE_MAP $DISH_TYPE_MAP

WORKDIR /app

COPY pyproject.toml poetry.lock /app/
RUN pip install poetry && poetry install --no-dev

CMD ["poetry", "run", "python", "src/main.py"]
