#!/bin/bash

# How to use:
# group -r "$GROUP_NAME"
# check_return "The $GROUP_NAME group"

check_return() {
    local exit_code="$?"
    local msg="$1"

    test -z "${msg}" && warn_msg "Something went wrong"

    if [ "${exit_code}" -ne 0 ]; then
        echo "${msg} was not created."
        return 1
    else
        echo "${msg} was created."
        return 0
    fi
}
