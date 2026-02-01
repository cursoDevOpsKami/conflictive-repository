#!/bin/bash

mkdir -p journal

for i in {1..3}; do
	echo "$(uname -s) $(date +%F)" > journal/journal-$i
done
