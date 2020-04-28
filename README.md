This is a project to learn Kubernetes in details.
This project provides basic components to quickly
onboard and will use as my personal template for later
projects from now on.

- Steps to create this project:

    - After creating a `.gitignore` file, I used `git init`
    - I am using pipenv, so `pipenv shell` gives me a venv
    - pipenv inclusing two sections: dev and deploy
    - dev section includes dev files like `black` or `ipython`
    - A `pyproject.toml` is added to handle `black` configs.

- Usage:
    - Please run the following commands:
    ```cosnole

    cp .env.template .env

    pipenv shell
    pipenv clean
    pipenv install --dev

    ```


