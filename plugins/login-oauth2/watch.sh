#!/bin/sh

#
# Configuration
#

# sass source

SASS_SOURCE_PATH="scss"

# sass options
SASS_OPTIONS="--source-map=false --style=nested"

# css target
CSS_TARGET_PATH="css"

#
# Check prerequisites
#
wtfile=$(command -v wt) || { echo "install wellington with 'brew install wellington"; exit 1; }

#
# Watch folder for changes
#
cd -P `pwd`
$wtfile compile "$SASS_SOURCE_PATH"  -b "$CSS_TARGET_PATH" $SASS_OPTIONS
$wtfile watch "$SASS_SOURCE_PATH"  -b "$CSS_TARGET_PATH" $SASS_OPTIONS