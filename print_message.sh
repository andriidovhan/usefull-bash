#!/bin/bash

# How to use:
# info_msg "Trying to create the $GROUP_NAME group"
# error_msg 'Group is already exist.'

info_msg() {
    local msg="$1"
    test -z "${msg}" && msg="Unknown info"
    printf "INFO: %s\n\n" "${msg}" >&1
}

error_msg() {
    local msg="$1"
    test -z "${msg}" && msg="Unknown error"
    echo "ERROR: ${msg}" >&2
    return 1
}
