#!/bin/bash
pandoc kochbuch.md -t epub3 --toc --toc-depth 2 --lua-filter ./pagebreak.lua --metadata-file metadata.yaml --epub-cover-image img/title.jpg -o kochbuch.epub
pandoc kochbuch.md -s -c style.css --toc --toc-depth 2 --metadata-file metadata.yaml -o index.html
