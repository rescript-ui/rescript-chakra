#!/bin/sh
bsc -format $1 > $1.tmp && mv $1.tmp $1
