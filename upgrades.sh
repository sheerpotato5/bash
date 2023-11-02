#!/bin/bash

BLUE="\e[96m"
GREEN="\e[92m"
YELLOW="\e[93m"

echo -e "${YELLOW}\nIniciando actualización...\n"

sudo apt update && sudo apt full-upgrade -y

echo -e "${BLUE}\nLimpiando...\n"

tput sgr0

sudo apt autoclean && sudo apt autoremove -y

echo -e "${GREEN}\nFin\n"

exit


