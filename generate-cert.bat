echo "Generating private key"
C:\OpenSSL-Win32\bin\openssl genrsa -des3 -passout pass:x -out server.pass.key 4096

echo "Generating Certificate Signing Request (CSR)"
C:\OpenSSL-Win32\bin\openssl rsa -passin pass:x -in server.pass.key -out server.key

del server.pass.key
C:\OpenSSL-Win32\bin\openssl req -new -key server.key -out server.csr -subj "/C=[COUNTRY]/ST=[STATE]/L=[LOCALE]/O=[ORGANIZATION]/CN=[COMMON NAME]"

echo "Generating Self-Signed Certificate"
C:\OpenSSL-Win32\bin\openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
