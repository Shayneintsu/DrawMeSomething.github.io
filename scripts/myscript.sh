#!/bin/bash

sed -i 's/⚪/$(printf "\\U$(shuf -i 0x1F7E8-0x1F7EB -n 1 | tr -d '\n')")/g' 'README.md'

