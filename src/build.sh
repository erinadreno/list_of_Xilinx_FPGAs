#!/bin/bash

if [ -e ../README.md ]
then
	rm ../README.md;
fi

for f in *.md; do (cat "${f}"; echo) >> ../README.md; done

