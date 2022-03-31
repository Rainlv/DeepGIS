#!/bin/bash
cd ~/DeepGIS/BackEnd/app || exit
python3 __init__.py &
cd ~/DeepGIS/FrontEnd || exit
npm run build
cd ./dist || exit
python3 -m http.server 8080
