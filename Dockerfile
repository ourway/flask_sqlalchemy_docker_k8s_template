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

FROM python:3.7.7 AS prod
RUN mkdir $HOME/app
WORKDIR /app
COPY . .
RUN pip install pipenv
RUN pipenv install --ignore-pipfile --deploy --system

ARG VERSION
ENV VERSION=${VERSION}


EXPOSE 7575
CMD ["./start.sh"]


