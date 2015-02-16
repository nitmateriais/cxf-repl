# cxf-repl
Use Apache CXF to access SOAP services from a Jython REPL.

## Introduction

This project allows you to tinker with a SOAP webservice using the Jython REPL. As Apache CXF employs a code generation scheme, for complex services it may be more intuitive to navigate generated classes using Jython than e.g. using SUDS in pure Python. The basic idea was inspired on [tpsoapclient](http://dm.zimmer428.net/2013/03/prototyping-think-project-soap-clients-with-jython).

## WSDL files

Place your WSDL files in `src/main/resources/wsdl`. By default, it contains WSDL files for the services provided by the [cnpqwsproxy](https://github.com/nitmateriais/cnpqwsproxy) project.

## Certificates

For TLS encrypted webservices, you need to place the server certificates in the `cert/cacerts` keystore. Use the following command:

`keytool -keystore cert/cacerts -importcert -file input.crt`

The keystore password is `changeit`.

## Compiling and running

Maven must be installed in your system. Just call:

`make repl`
