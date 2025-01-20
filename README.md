# Pandoc Docker for Slicon

### Generate docker image with using Dockerfile

`docker build -t pandoc3-latex-eisvogel .`

### Run docker image

`docker run -it --rm -v $(pwd):/data pandoc3-latex-eisvogel`

### Edit `meta.yaml` file 

`title`, `author`, `date`, `titlepage-background` etc... 
    
### Generate Document 

`pandoc file1.md file2.md file3.md -o output.pdf  --metadata-file=meta.yaml --template eisvogel --highlight-style tango`

---
 PS: file1.md file2.md file3.md represent your files and should be right order. Pdf document consist same order of files in TOC.
 PS: For intel processors rename `dockerfile_for_win` to `Dockerfile` and use it.

