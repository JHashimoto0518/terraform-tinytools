#!/usr/bin/env bash
# create docs of each module which has file used in terraform-docs configuration file.
# usage: bash create_all_modules_docs.sh . header.md README.md ./terraform-docs.yml
# $1: root dir of starting traversal
# $2: file name in each module dir.
# $3: output doc file name.
# $4: terraform-docs configuration file path.
find $1 -name $2 -type f | xargs -i sh -c 'terraform-docs markdown `dirname {}` > `dirname {}`/$3 --config $4'
