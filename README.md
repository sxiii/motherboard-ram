# Find on-sale RAM in Norwegian shops, that is compatible with your motherboard
My goal was to get RAM that is supported by my motherboard. I was checking like 5 to 10 modules. When I got bored, I wrote some helper scripts, and then decided to publish them.

## Pre-Requirements
* Linux, Bash, Awk, Grep (most of linux distro has it)
* Download and prepare your "Motherboard RAM compatibility spreadsheet/table", usually shipped in PDF form, we will convert it later (PDF needs to be "text", not "images/scanned")
* Download this repo with ``` git clone ```
* Follow running procedure (below)
* Edit the included files, if something is broken

## Running procedure

0. Edit the PRISJAKT download request (default is "DDR4 16gb", in the RAM modules for desktops/servers category) in the file "get_ram.sh"
1. Get RAM available from prisjakt: ``` ./get_ram.sh ```
2. Process downloaded HTML files into clean text list: ``` ./process.sh ```
3. Move away unneeded HTML files: ``` mkdir htmlfiles && mv *html htmlfiles ```
4. Fetch serials from the list file: ``` ./serials.sh ```
5. Convert your motherboard PDF's to text: ``` pdftotext Memory-QVL.pdf ```
6. Open "compare.sh" file, edit filenames of TXT files if needed, and finally run compare procedure: ``` ./compare ```.
7. Wait several seconds and view the results: ``` cat on-sale.txt ```

## Notes
* No warranties here. "Use at your own risk".
* If you want/can, improve. Even better, create pull request with your improvements.
