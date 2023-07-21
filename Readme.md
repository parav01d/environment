# spcfy-environment

The project includes the development and production environment for `spcfy.id`.

## Requirements

To be able to work, you need Docker and docker-compose installed on your machine. You also need `make` to be installed
on your machine, so that you can run the included scripts of the repository.

## How to start developing

Unless not specified in another way, run all scripts on the root directory.

1. `make init` will download all required repositories on the `main` branch.
2. Inside the checked out repositories in the directory `repository`: Check out the actual branch you need plan to work
   on.
3. `make development` will start the development environment, with enabled HMR for the frontend and backend.

## Scripts

| script                  | description                                                                            |
|-------------------------|----------------------------------------------------------------------------------------|
| `make init`             | download all needed repositories and initialize the development environment            |
| `make development`      | starts the environment in ready for development purpose                                |
| `make stop_development` | stops the running development environment                                              |
