#!/bin/bash
shopt -s extglob
set -ev

ENDPOINT=https://lod.humanatlas.io/sparql
HRAPOP_ENDPOINT=http://localhost:8080/blazegraph/namespace/kb/sparql

src/cli/sparql-select.sh $ENDPOINT queries/sparql/data/digital-objects-per-organ.rq | csvsort -c organ > data/data/digital-objects-per-organ.csv

src/cli/sparql-select.sh $HRAPOP_ENDPOINT queries/sparql/experimental-data/hra-pop-mapped-to-hra.rq > data/experimental-data/hra-pop-mapped-to-hra.csv
