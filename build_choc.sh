# ------------------------------------------------------------------------------
# Tidy up the Choc source code, zip it and upload to haxelib.
# ------------------------------------------------------------------------------
BIN_DIR="bin"
SRC_DIR="Choc"
ZIP_FILE="Choc.zip"

# ------------------------------------------------------------------------------
# Check if the bin directory exists, if so then remove it.
# ------------------------------------------------------------------------------
if [ -d "${SRC_DIR}/${BIN_DIR}" ]; then
  echo "Removing ${BIN_DIR}/..."
  rm -r ${SRC_DIR}/${BIN_DIR}
  echo "${BIN_DIR}/ Removed."
fi

# ------------------------------------------------------------------------------
# Removed old zip version.
# ------------------------------------------------------------------------------
echo "Removing old ${ZIP_FILE}."
rm -r $ZIP_FILE
echo "${ZIP_FILE} Removed."
echo "Zipping a new ${ZIP_FILE}."
zip -q -r $ZIP_FILE $SRC_DIR

# ------------------------------------------------------------------------------
# Upload to haxelib.
# ------------------------------------------------------------------------------
haxelib submit $ZIP_FILE
