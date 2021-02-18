#!/bin/bash

DIR="$HOME/public/notes"

for CLASS in $DIR/*/; do
  if [ -f $CLASS/compiled.md ]; then
    rm $CLASS/compiled.md
  fi
  cat $CLASS/*.md > $CLASS/compiled.md
done
