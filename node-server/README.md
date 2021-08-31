Basic Node Websocket Server
===========================

Adapted from [PubNub Node.js WebSocket Programming Examples](https://www.pubnub.com/blog/nodejs-websocket-programming-examples/) 

Usage
-----

Install necessary NPM modules:

```
npm install
```

Run the demo server:

```
npm run start
```

Open index.html to test the running server. Open the developer tools (Ctrl+Shift-I), then go to the console tab. You should see the following messages:

```
WebSocket Client Connected
index.html:15 Received: 'Hi this is WebSocket server!'
```


Generating TLS Certs
--------------------

Adapted from Node's [How to use the TLS Module](https://nodejs.org/en/knowledge/cryptography/how-to-use-the-tls-module/)

```
C:\Users\chris\Documents\elan-ws-demo\node-server>openssl genrsa -out private-key.pem 1024
Generating RSA private key, 1024 bit long modulus (2 primes)
.............+++++
......+++++
e is 65537 (0x010001)
```

Generate a certificate signing request (CSR)

```
C:\Users\chris\Documents\elan-ws-demo\node-server>openssl req -new -key private-key.pem -out csr.pem
You are about to be asked to enter information that will be incorporated
into your certificate request.
What you are about to enter is what is called a Distinguished Name or a DN.
There are quite a few fields but you can leave some blank
For some fields there will be a default value,
If you enter '.', the field will be left blank.
-----
Country Name (2 letter code) [AU]:US
State or Province Name (full name) [Some-State]:PA
Locality Name (eg, city) []:New Hope
Organization Name (eg, company) [Internet Widgits Pty Ltd]:Poolside Tech, LLC
Organizational Unit Name (eg, section) []:
Common Name (e.g. server FQDN or YOUR name) []:
Email Address []:

Please enter the following 'extra' attributes
to be sent with your certificate request
A challenge password []:
An optional company name []:
```

Self-sign the CSR

```
C:\Users\chris\Documents\elan-ws-demo\node-server>openssl x509 -req -in csr.pem -signkey private-key.pem -out public-cert.pem
Signature ok
subject=C = US, ST = PA, L = New Hope, O = "Poolside Tech, LLC"
Getting Private key
```

