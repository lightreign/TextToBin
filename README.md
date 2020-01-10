Text to Binary
====

A demo script for fun

You can either run it as it is or install it onto your system (if you are keen that is)

Requirements
------------

Perl 5.x

Install
-------

**Using Module::Build**

```
perl Build.PL
./build installdeps
./build test
./build install
```

Usage
-----

###To convert your text to binary..

```
perl bin/text2bin 'string of text to convert'
```

Or pipe data into stdin

```
echo -n 'string of text to convert' | bin/text2bin
```

###To convert your binary back into text..

```
perl bin/bin2text '00101110101001100001111000101110'
```

Or pipe data into stdin

```
echo -n '00101110101001100001111000101110' | bin/bin2text
```

Author
------

Adrian Pennington (2019)


