#!/bin/bash
# Simple shell script for checking if bitcoin_dealer is running.
#
# Set at least EMAIL parameter.

SUBJECT="Bitcoin dealer down!"
EMAIL="tomaz.znideric@gmail.com"
if ! ps ax | grep -v grep | grep "scripts/dealing.py" > /dev/null
then
    echo "bitcoin_dealer is not running?"
fi
