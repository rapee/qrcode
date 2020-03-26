# Simple QR Code Genrator

## Prepare CSV file

What you'll only need is a CSV file, with each line containing what you want to encode in QR code. It can be one of:

- URL (to open a web page or specific app)
- Number (e.g. Starbucks codes)
- Text

For example, if you want to create QR codes for StarBucks voucher,
you might create Excel file with following rows. Note that it should contain only on column and no header row. Then, **File > Export > CSV**

Sample file: **qrcode_input.csv**

```csv
8838124817261582
8838124817273266
8838124817283945
8838124817295609
8838124817303562
8838124817315639
```

## How to create QR codes

### macOS

1. Download and [install Node.js](https://nodejs.org/en/download/). Choose **macOS Installer (.pkg) 64-bit**. Double click to install. You can skip this if you already have Node.js installed.
2. [Prepare CSV file](#Prepare%20CSV%20file) and put it inside **Downloads** directory. Rename it to `qrcode_input.csv`.
3. Open **Terminal** app. See this image for guidance.

   ![How to open Terminal on macOS](https://raw.githubusercontent.com/rapee/qrcode/master/images/macos_howto.png)

4. Copy and paste this in side **Terminal** app, then press **ENTER**. You might be asked for your password.

   ```bash
   cd ~/Downloads
   curl -L https://raw.githubusercontent.com/rapee/qrcode/master/run.sh | bash -s qrcode_input.csv
   ```

5. QR code PNG images will be created inside **Downloads/out** directory. You can see what data is inside QR codes from `Downloads/out/list.csv` file.
