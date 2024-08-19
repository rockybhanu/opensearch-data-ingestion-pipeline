openssl x509 -outform der -in esnode.pem -out esnode.der

keytool -importcert -alias opensearch -keystore esnode.jks -file esnode.der

keytool -list -v -keystore esnode.jks