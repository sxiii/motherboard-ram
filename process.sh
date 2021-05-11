#!/bin/bash
cat *.html | html2text | grep "Pris lav - høy" -A50 | grep "*" >> list.txt

