#!/bin/bash

# Garante que não há outro hyprpaper rodando travado
killall hyprpaper
sleep 1

# Inicia o hyprpaper silenciosamente em segundo plano
hyprpaper &

# Pausa de 3 segundos (tempo de sobra para ele carregar durante o boot pesado)
sleep 3

# Aplica o papel de parede
hyprctl hyprpaper preload "/home/bruno/.config/hypr/kokushiboFullHdjpeg"
hyprctl hyprpaper wallpaper ",/home/bruno/.config/hypr/kokushiboFullHdjpeg"