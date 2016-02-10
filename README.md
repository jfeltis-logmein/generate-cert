# generate-cert
Shell script to automatically generate self-signed certificates with OpenSSL.

[OpenSSL Win32 Binary](http://slproweb.com/products/Win32OpenSSL.html) (latest full version)

Set Windows environment variables:
```
set RANDFILE=c:\[PATH CREATED FOR CERTIFICATES]\.rnd
set OPENSSL_CONF=c:\OpenSSL-Win32\bin\openssl.cfg
```
