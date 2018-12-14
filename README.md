# SCARV document preparation assets

- This repository houses a set of (generated) logo images, in various
  formats.  There are two versions, namely

  - a plain (square) version,
  - a fancy (rectangle, with fault injection and side-channel arrows) version,

  both of which are a bit
  "[programmer art](http://en.wikipedia.org/wiki/Programmer_art)",
  in style and quality but good enough.

- The images themselves are stored using
  [Git Large File Storage (LFS)](http://git-lfs.github.com/):
  it makes sense to install this first, otherwise that content appears
  as a set of pointers to data vs. the data itself.

- Otherwise, you might want to regenerate them:

  - Install the
    [OpenType](http://en.wikipedia.org/wiki/OpenType) [PCap Terminal](http://www.pixelsagas.com/?download=pcap-terminal)
    font; note the associated license means it is free for non-commercial 
    use.  Having downloaded it, installation is fairly simple: on Ubutu,
    for example, you just
  
    - copy the files into place
      via 
  
      ```
      sudo cp *.otf /usr/share/fonts/opentype
      ```
  
      then
    - update the font cache 
      via
      ```
      sudo fc-cache -f -v
      ```
  
  - Build the PDF-format master logo, plus a fixed (via `Makefile`) set 
    of other formats,
    via
  
    ```
    make all
    ```
