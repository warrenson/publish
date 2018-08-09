# Extract the images from a jupyter notebook, with nbconvert
#!/bin/bash
NOTEBOOK=$1
NAME=`basename $NOTEBOOK .ipynb`

NBTMPDIR=`mktemp -d`
TARGET_DIR=${2:-"figures"}
mkdir -p $TARGET_DIR

jupyter nbconvert --to latex --output-dir=$NBTMPDIR --output='figure' "$NOTEBOOK"

FILE_NUM=0
FILES=`ls $NBTMPDIR/figure_files/* | sort -t '_' -k2,2n -k3,3n`
RSYNC_ARGS="-v -c"

echo
echo "Renaming and copying images to: $TARGET_DIR"
echo

for FILE in $FILES
do
    FILE_NUM=$((FILE_NUM+1))
    SUFFIX="`echo $FILE | perl -pe 's|^.*\.(.*)$|$1|'`"
    TARGET=$(printf '%s/figure_%02d.%s' "$TARGET_DIR" "$FILE_NUM" "$SUFFIX")
    rsync $RSYNC_ARGS "$FILE" "$TARGET"
    #echo "Copy: $FILE"
    #echo "\t $TARGET"
done

echo
echo "Removing tmpdir: $NBTMPDIR"
rm -r $NBTMPDIR
echo
