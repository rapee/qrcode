# Usage: npm start <INPUT>
#
# For example:
# $ npm start sample_input.csv
#
# <INPUT> can be text or csv file with each line
# containing "URL, ID or Text"
# Output QR codes are available at out/*.png

OUTPUT_DIR=out
CSV_IN=$1
CSV_OUT="${OUTPUT_DIR}/list.csv"
GENERATOR_PATH="${OUTPUT_DIR}/generator.sh"

# Clean
rm -rf $OUTPUT_DIR
mkdir -p $OUTPUT_DIR

echo "PATH=$PWD/node_modules/.bin:\$PATH" > "$GENERATOR_PATH"
echo "id,code,image" > "$CSV_OUT"

echo "QR text input: ${CSV_IN}"
chmod +x $GENERATOR_PATH

count=0
while IFS="" read -r p|| [ -n "$p" ]
do
  (( count++ ))
  QRCODE=$p
  echo "qrcode -o ${OUTPUT_DIR}/qr_${count}.png -s 16 -q 4 $QRCODE 1> /dev/null" >> $GENERATOR_PATH
  printf "%s,%s,%s\n" $count $QRCODE "qr_${count}.png" >> "$CSV_OUT"
done < "$CSV_IN"

# Generate QR Code
echo "Preparing ${count} QR codes..."
$GENERATOR_PATH
echo ""
echo "Total ${count} QR codes generated."
echo "- Image files: ${PWD}/${OUTPUT_DIR}/*.png"
echo "- CSV file: ${PWD}/${OUTPUT_DIR}/list.csv"
echo ""
echo "Done."
