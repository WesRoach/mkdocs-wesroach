#!/bin/bash

# build clean site
mkdocs build --clean

# sync with s3
aws s3 sync ./site s3://wesroach.com

# open the site
open http://wesroach.com

# if Route43 is being an idiot again
# open http://wesroach.com.s3-website-us-east-1.amazonaws.com/