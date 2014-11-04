#!/bin/bash

rm -rf public
hugo --theme=liquorice
s3cmd --acl-public --delete-removed sync public/* s3://techglider.in/
