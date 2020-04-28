FROM python:3.7.7 AS base

RUN pip install pipenv
COPY Pipfile Pipfile.lock ./
RUN pipenv install --ignore-pipfile --dev --system

ARG VERSION
ENV VERSION=${VERSION}



FROM base AS local
WORKDIR /app


EXPOSE 7575
CMD ["./start.sh"]
