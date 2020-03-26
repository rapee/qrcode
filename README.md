# Simple QR Code Genrator

## Prepare CSV file

What you'll only need is a CSV file, with each line containing what you want to encode in QR code:

- URL (to open a web page or specific app)
- Number (e.g. Starbucks codes)
- Text

For example, if you want to create QR codes for StarBucks voucher,
you might create Excel file with following rows, then **File > Export > CSV**

File: **sample.csv**

```csv
8838124817261582
8838124817273266
8838124817283945
8838124817295609
8838124817303562
8838124817315639
```

## Run on OSX

1. Prepare CSV file. Put it inside **Documents** directory and rename it as `qrcode_input.csv`.
2. Open **Terminal** app.
3. Enter these and press **ENTER**.

   ```bash
   cd ~/Documents
   curl -L https://raw.githubusercontent.com/rapee/qrcode/master/run.sh | bash -s qrcode_input.csv
   ```

4. QR code PNG images will be created inside `out/` directory. Plus, you can see what code is inside each QR code by open `out/list.csv` file.
