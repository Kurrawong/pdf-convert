# PDF Converter

Convert to pdf from a variety of formats.

docx, txt, tiff, ...

To use this image

```bash
docker build . -t pdf-convert
```

```bash
docker run -v "$(pwd)/input:/data" pdf-convert
```

Which will convert all files in the `input/` directory to pdf.


Assuming you have a folder in the current working directory called `input` with some
documents in it.

i.e.

    ./input
        ⤷ /myfile.docx
        ⤷ /otherfile.txt

