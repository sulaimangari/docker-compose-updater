#!/usr/bin/env bash

### GLOBAL CONSTANTS ###
# ANSI ESCAPE SEQUENCES
readonly BOLD_TEXT="\033[1m"          # Bold
readonly CLEAR_TEXT="\033[0m"         # Clear

echo -e "${BOLD_TEXT}\
################################################################################
#                                                                              #
#                    DOCKER COMPOSE GCLOUD CONSOLE UPDATER                     #
#                                                                              #
################################################################################
${CLEAR_TEXT}"

sudo rm -rf docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/`curl -fsSLI -o /dev/null -w %{url_effective} https://github.com/docker/compose/releases/latest |sudo sed 's#.*tag/##g' && sudo echo`/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose

