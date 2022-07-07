#!/usr/bin/env sh
git clone --depth 1 https://github.com/DanySK/experiment-2022-self-stab-leader-election.git ~/pianini-acsos22-experiment
cd ~/pianini-acsos22-experiment
./gradlew runBarabasiGraphic --parallel
echo "You can cleanup folder '$(pwd)' shouldn't you wish to run any other experiment"
