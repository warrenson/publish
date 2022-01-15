#!/bin/bash
SRC="$1"

# --top-level-division=chapter \
CMD="pandoc \
--filter=pandoc-xnos \
--citeproc \
--csl ieee.csl
--listing \
--from=markdown+yaml_metadata_block \
-o ${SRC/%.md/.pdf} \
${SRC}"

echo $CMD
$CMD

