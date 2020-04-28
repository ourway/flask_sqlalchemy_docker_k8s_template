FROM python:3.7.7 AS base

RUN pip install pipenv
RUN mkdir -p ${HOME}/app
WORKDIR "${HOME}/app"

ARG VERSION
ENV VERSION=${VERSION}

COPY Pipfile Pipfile.lock ./

FROM base AS local

RUN pipenv install --ignore-pipfile --system --dev
COPY . .

EXPOSE 7575
CMD ["flask", "run"]
