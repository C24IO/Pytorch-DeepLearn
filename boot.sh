#!/usr/bin/env bash

NAME="deep-learning-data-institute"

if [ ! -d $NAME ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  python3 -m venv $NAME
fi

echo " "${NAME}" "

/bin/bash  -c ". ./"${NAME}"/bin/activate ; exec pip install -r requirements.txt"
/bin/bash  -c ". ./"${NAME}"/bin/activate ; exec jupyter notebook --port 8888"
