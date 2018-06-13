#!/usr/bin/env bash

# How to use:
# border "Some text"

border() {
    title="| $1 |"
    edge=$(echo "$title" | sed 's/./-/g')
    echo "$edge"
    echo "$title"
    echo "$edge"
}

border "Some text"


#border()
#{
#  title="| $1 |"
#  edge=$(echo "$title" | sed 's/./-/g')
#  printf "%s\n" "$edge"
#  printf "%s\n" "$title"
#  printf "%s\n" "$edge"
#}
