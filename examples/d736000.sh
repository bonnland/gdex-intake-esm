#!/bin/bash

# Path to Kerchunk reference files
#REF_DIR="/gdex/data/d651039/kerchunk"
REF_DIR="/glade/campaign/collections/gdex/data/d736000/kerchunk"

# Path to catalog generator 
SRC_DIR="/glade/u/home/bonnland/GitRepos/gdex-intake-esm/generator"

OPTIONS1='--data_format reference --output_format csv_and_json --depth 0'
#OPTIONS2='--use_cftime True --ignore_vars time_bnds'
OPTIONS2='--use_cftime True'


# This one call produces all three (posix, https, osdf) catalogs.  
# Note you MUST name the catalog as "<dataset_id>-posix" to avoid an error.
python $SRC_DIR/create_catalog.py $REF_DIR $OPTIONS1 $OPTIONS2 --exclude "*-remote-*" --make_remote --catalog_name d736000-posix --description "IMERG monthly kerchunk catalog"


