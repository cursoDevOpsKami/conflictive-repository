#!/bin/bash
mkdir journal && touch $_/journal-{1..3}
	for file in journal/journal-{1..3}
	do
		date >> "$file" && lsb_release -a >> "$file"
	done
	cat journal/journal-{1..3}
