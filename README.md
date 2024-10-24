# PDF Converter

Convert to pdf from a variety of formats.

docx, txt, tiff, ...

anything that libreoffice supports.

To use this image

```bash
docker build . -t pdf-convert
```

```bash
docker run -v "$(pwd)/input:/inputs" -v "$(pwd)/output:/outputs" pdf-convert
```

Which will convert all files in the `input/` directory to pdfs in the `output/`
directory.
