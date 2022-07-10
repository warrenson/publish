#!/bin/bash
SRC="$1"
shift
ARGS="$@"

# Useful args
# --top-level-division=chapter \
# --csl ieee.csl \
CMD="pandoc \
${ARGS} \
--filter=pandoc-xnos \
--citeproc \
--listing \
--from=markdown+yaml_metadata_block \
-o ${SRC/%.md/.pdf} \
${SRC}"

echo "Running: $CMD"
echo
$CMD
echo
echo "Done"

