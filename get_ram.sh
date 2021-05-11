#!/bin/bash
i="0"
url="https://www.prisjakt.no/search?search=ddr4%2016gb&sort=lowest_price%3Aasc&category_id=1790&offset=$i"
while [ $i -lt 1000 ]
do
curl -s $url -o p$i.html
echo "Downloaded p$i.html, sleeping..."
sleep 1
i=$[$i+24]
done
