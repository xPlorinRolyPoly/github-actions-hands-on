#!/bin/bash

sudo apt-get install -y cowsay

cowsay -f dragon "RAWR from Dragon! Welcome to GitHub Actions!" >> ascii_art_dragon.txt

grep -i "dragon" ascii_art_dragon.txt

cat ascii_art_dragon.txt

ls -ltra
