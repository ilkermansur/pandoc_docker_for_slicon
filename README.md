# pandoc_docker_for_slicon

- Generate docker image with using Dockerfile

`docker build -t pandoc3-latex-eisvogel-arm .`

- Run docker image

`docker run -it --rm -v $(pwd):/data pandoc3-latex-eisvogel-arm`

- Edit `meta.yaml` file 

title: "Test Documents"

author: "Ilker Mansur"

date: "09/10/2024"

toc-own-page: "true"

fig_align: "center"

toc: true

lang: en

titlepage: true

titlepage-background: backgrounds/titlePage.pdf

listings-disable-line-numbers: true

book: true

code-block-font-size: \scriptsize

    
- Generate Document 

`pandoc file1.md file2.md file3.md -o output.pdf  --metadata-file=meta.yaml --template eisvogel --highlight-style tango`

 PS: file1.md file2.md file3.md represent your files and should be right order. Pdf document consist same order of files in TOC.

