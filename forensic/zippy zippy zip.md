# zippy zippy zip

The file we get is compressed using bzip2, when open we get another file compresed in gzip.... and recursively.

Seeing it was compressed A LOT of time, we built a script that stopped when we had a file that wasn't a bzip of gzip file. We got some ASCII text, containing the flag.

The script used to reverse the recursively zip can be found [here](zippy_zip_zip/decompress.sh)