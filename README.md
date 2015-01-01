#Docker container for doing Chef development

This is a Dockerfile and some dependencies to set up an environment for developing and testing Chef cookbooks. It's mostly an exercise for me to play with Docker, but it's not purely academic - I'd like to be able to get a proper Chef development environment up and running easily when needed.

This installs ChefDK, Git, Tmux, and Emacs. It sets ChefDK's bundled ruby as the system ruby. When you start the Docker container it starts Tmux and Emacs within it.

## Instructions

You'll need a working docker environment first. For OS X and Windows, the easiest way to do this is to install [Boot2Docker](http://boot2docker.io)

Build the container by running `docker build -t chef-development .`

Run the container by running `docker run -it chef-development`

## Todo

* Add some Chef configuration to Emacs (snippets, ruby and guard modes, etc)

