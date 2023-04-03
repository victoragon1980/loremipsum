#!/bin/bash

for i in {1..5}
do
    lineas=$(shuf -i 1-20 -n 1)
    lorem=$(curl -s https://www.lipsum.com/feed/xml\?amount\=$lineas | sed -n '/<lipsum>/,/<\/lipsum>/p' | sed -e 's/<lipsum>//g' -e 's/<\/lipsum>//g'
)   
    echo "$lorem" >> loremipsum-$i.txt
done