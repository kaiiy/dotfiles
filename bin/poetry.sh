#!/usr/bin/env bash

# Add completions for fish
poetry completions fish | sed -E "s/'([a-z]*[[:blank:]][a-z]*)''/\1'/g" >  ~/.config/fish/completions/poetry.fish
