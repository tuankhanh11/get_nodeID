#!/bin/bash

curl -X POST "https://beta.orchestrator.nexus.xyz/nodes" \
>   -H "Accept: */*" \
>   -H "Content-Type: application/octet-stream" \
>   --data-raw $'\u0008\u0001\u0012$1c298d0a-85a8-4244-b1b5-42617f6d1561' -v
Note: Unnecessary use of -X or --request, POST is already inferred.
*   Trying 34.30.84.32:443...
* TCP_NODELAY set
* Connected to beta.orchestrator.nexus.xyz (34.30.84.32) port 443 (#0)
* ALPN, offering h2
* ALPN, offering http/1.1
* successfully set certificate verify locations:
*   CAfile: /etc/ssl/certs/ca-certificates.crt
  CApath: /etc/ssl/certs
* TLSv1.3 (OUT), TLS handshake, Client hello (1):
* TLSv1.3 (IN), TLS handshake, Server hello (2):
* TLSv1.3 (IN), TLS handshake, Encrypted Extensions (8):
* TLSv1.3 (IN), TLS handshake, Certificate (11):
* TLSv1.3 (IN), TLS handshake, CERT verify (15):
* TLSv1.3 (IN), TLS handshake, Finished (20):
* TLSv1.3 (OUT), TLS change cipher, Change cipher spec (1):
* TLSv1.3 (OUT), TLS handshake, Finished (20):
* SSL connection using TLSv1.3 / TLS_AES_256_GCM_SHA384
* ALPN, server accepted to use http/1.1
* Server certificate:
*  subject: CN=beta.orchestrator.nexus.xyz
*  start date: Dec 13 00:00:00 2024 GMT
*  expire date: Dec 13 23:59:59 2025 GMT
*  subjectAltName: host "beta.orchestrator.nexus.xyz" matched cert's "beta.orchestrator.nexus.xyz"
*  issuer: C=US; O=DigiCert Inc; OU=www.digicert.com; CN=GeoTrust TLS RSA CA G1
*  SSL certificate verify ok.
> POST /nodes HTTP/1.1
> Host: beta.orchestrator.nexus.xyz
> User-Agent: curl/7.68.0
> Accept: */*
> Content-Type: application/octet-stream
> Content-Length: 40
>
* upload completely sent off: 40 out of 40 bytes
* TLSv1.3 (IN), TLS handshake, Newsession Ticket (4):
* TLSv1.3 (IN), TLS handshake, Newsession Ticket (4):
* old SSL session ID is stale, removing
* Mark bundle as not supporting multiuse
< HTTP/1.1 504 Gateway Time-out
< Server: nginx/1.27.4
< Date: Thu, 20 Feb 2025 10:13:23 GMT
< Content-Type: text/html
< Content-Length: 167
< Connection: keep-alive
<
<html>
<head><title>504 Gateway Time-out</title></head>
<body>
<center><h1>504 Gateway Time-out</h1></center>
<hr><center>nginx/1.27.4</center>
</body>
</html>
* Connection #0 to host beta.orchestrator.nexus.xyz left intact
vm@sdvxczf:~$
