#!/bin/bash

# ================= COLORS =================
RESET="\033[0m"
BLACK="\033[1;30m"
RED="\033[1;31m"
GREEN="\033[1;32m"
YELLOW="\033[1;33m"
BLUE="\033[1;34m"
PURPLE="\033[1;35m"
CYAN="\033[1;36m"
WHITE="\033[1;37m"

# ================= SETUP =================
clear
pkg update -y
pkg upgrade -y
pkg install -y git python python2

clear
echo -e "${RED}"
echo "██╗   ██╗███████╗██████╗ ████████╗██╗██╗   ██╗███████╗"
echo "██║   ██║██╔════╝██╔══██╗╚══██╔══╝██║██║   ██║██╔════╝"
echo "██║   ██║█████╗  ██████╔╝   ██║   ██║██║   ██║███████╗"
echo "╚██╗ ██╔╝██╔══╝  ██╔══██╗   ██║   ██║██║   ██║╚════██║"
echo " ╚████╔╝ ███████╗██║  ██║   ██║   ██║╚██████╔╝███████║"
echo "  ╚═══╝  ╚══════╝╚═╝  ╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚══════╝"
echo -e "${CYAN}          Vertius Server • Minecraft on Termux${RESET}"
echo ""
sleep 2
clear

# ================= MAIN UI =================
echo -e "${GREEN}╔══════════════════════════════════════════════════════╗"
echo -e "${GREEN}║${CYAN}          Vertius Minecraft Server Launcher          ${GREEN}║"
echo -e "${GREEN}╠══════════════════════════════════════════════════════╣"
echo -e "${GREEN}║ ${YELLOW}[1]${WHITE} Minecraft 1.15.2  (Stable | 4–12GB RAM)        ${GREEN}║"
echo -e "${GREEN}║ ${YELLOW}[2]${WHITE} Minecraft 1.16.5  (Beta | Unstable)            ${GREEN}║"
echo -e "${GREEN}║ ${YELLOW}[3]${WHITE} Minecraft 1.19.2  (Beta | Unstable)            ${GREEN}║"
echo -e "${GREEN}║                                                      ${GREEN}║"
echo -e "${GREEN}║ ${YELLOW}[0]${WHITE} Reset / Update Vertius Server                  ${GREEN}║"
echo -e "${GREEN}╚══════════════════════════════════════════════════════╝"
echo ""
echo -ne "${CYAN}Select an option ➜ ${RESET}"
read ch

# ================= OPTIONS =================
case $ch in
1)
    clear
    echo -e "${GREEN}Launching Minecraft 1.15.2...${RESET}"
    git clone https://github.com/drmatoi/minecraft
    cd minecraft || exit
    chmod +x launcher.sh
    ./launcher.sh
    ;;
2)
    clear
    echo -e "${YELLOW}Launching Minecraft 1.16.5 (Unstable)...${RESET}"
    git clone https://github.com/drmatoi/minecraft
    cd minecraft || exit
    chmod +x betalauncher1.16.5.sh
    ./betalauncher1.16.5.sh
    ;;
3)
    clear
    echo -e "${YELLOW}Launching Minecraft 1.19.2 (Unstable)...${RESET}"
    git clone https://github.com/drmatoi/minecraft
    cd minecraft || exit
    chmod +x betalauncher1.19.2.sh
    ./betalauncher1.19.2.sh
    ;;
0)
    clear
    echo -e "${RED}Resetting Vertius Server...${RESET}"
    rm -rf minecraft
    git clone https://github.com/drmatoi/minecraft
    cd minecraft || exit
    chmod +x START.sh
    ./START.sh
    ;;
*)
    echo -e "${RED}Invalid option! Please choose a valid number.${RESET}"
    sleep 2
    bash START.sh
    ;;
esac