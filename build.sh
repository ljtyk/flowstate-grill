#!/bin/sh
# Builds index.html (the GitHub Pages page) from grill.html, the working game file.
# grill.html is written without a document wrapper, so this adds the doctype, <head> and <body>.
set -e
cd "$(dirname "$0")"
end=$(grep -n '^</style>' grill.html | head -1 | cut -d: -f1)
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<meta name="description" content="A one-station grill game where every cook time lands on the beat.">\n'
  sed -n "1,${end}p" grill.html | grep -v '<meta name="viewport"'
  printf '</head>\n<body>\n'
  sed -n "$((end + 1)),\$p" grill.html
  printf '</body>\n</html>\n'
} > index.html
echo "index.html built from grill.html"
