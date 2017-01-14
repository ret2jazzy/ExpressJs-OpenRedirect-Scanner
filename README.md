# ExpressJs-OpenRedirect-Scanner
This is a very simple open redirect scanner for all ExpressJs &lt; 1.7.2. It takes a list of URL's and outputs the vulnerable One's
Here is the issue of ExpressJs "https://github.com/expressjs/serve-static/issues/26" for which i wrote this

Run it like 
"./Scan.sh urls.txt"

To save output in a file
./Scan.sh urls.txt > output.txt

Remember, urls should be in the format "site.com" or "www.site.com", not "http://site.com"
