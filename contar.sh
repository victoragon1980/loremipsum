#!/bin/bash
for file in loremipsum-*.txt
do
lines=$(wc -l < "$file")
echo "$file tiene $lines lineas."
done
