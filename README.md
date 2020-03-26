# Simple QR Code Generator

## Prepare CSV file

What you'll only need is a CSV file, with each line containing data that you want to encode in QR code. It can be one of:

- URL (to open a web page or specific app)
- Number (e.g. Starbucks codes)
- Text

You can do so by creating a new Excel file. Enter each row with either URL, number or text. It must contain only one column and no header row. Then, **File > Export > CSV**. Note that you must not include any table or sheet names.

For example

1. If you want to create QR codes for URL, prepare data like this:

   Sample file: **qrcode_input.csv**

   ```csv
   https://www.thaipbs.or.th/
   https://www.thairath.co.th/
   https://news.mthai.com/
   ```

2. If you want to create QR codes for StarBucks voucher, prepare data like this:

   Sample file: **qrcode_input.csv**

   ```csv
   8838124817261582
   8838124817273266
   8838124817283945
   ```

## How to create QR codes

### macOS

1. Download and [install Node.js](https://nodejs.org/en/download/). Choose **macOS Installer (.pkg) 64-bit**. Double click to install. You can skip this if you already have Node.js installed.
2. [Prepare CSV file](#Prepare%20CSV%20file) and put it inside **Downloads** directory. Rename it to `qrcode_input.csv`.
3. Open **Terminal** app. See this image for guidance.

   ![How to open Terminal on macOS](https://raw.githubusercontent.com/rapee/qrcode/master/images/macos_howto.png)

4. Copy and paste this in side **Terminal** app, then press **ENTER**. You will be asked for password. When you type password, it won't show dots for key strokes as usual, but it is right there. Type it all and press **ENTER**.

   ```bash
   cd ~/Downloads
   curl -L -s https://raw.githubusercontent.com/rapee/qrcode/master/run.sh | bash -s qrcode_input.csv
   ```

5. QR code PNG images will be created inside **Downloads/out** directory. You can see what data is inside QR codes from `Downloads/out/list.csv` file.

6. Check by scanning QR code.
