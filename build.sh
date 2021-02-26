#!/bin/bash

download_link=https://github.com/ArjunSahlot/chess_engines/archive/main.zip
temporary_dir=$(mktemp -d) \
&& curl -LO $download_link \
&& unzip -d $temporary_dir main.zip \
&& rm -rf main.zip \
&& mv $temporary_dir/chess_engines-main $1/chess_engines \
&& rm -rf $temporary_dir
echo -e "[0;32mSuccessfully downloaded to $1/chess_engines[0m"
