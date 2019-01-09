# SCARV-related document preparation assets

This repository houses a range of assets which support the preparation of
various SCARV-related documents (e.g., research papers, technical reports, 
presentation slides).

1. The
   `tex`
   directory houses LaTeX macros, styles, and a SCARV-related bibliography
   in BiBTeX format.  The easiest way to use these assets is probably via
   the
   `TEXINPUTS`
   and/or
   `BIBINPUTS`
   environment variables.

2. The
   `logo`
   directory houses some (generated) logo images, in various formats.  
   
   - There are two versions, namely

     - a plain (square) version,
     - a fancy (rectangle, with fault injection and side-channel arrows) version,

     both of which are a bit
     "[programmer art](http://en.wikipedia.org/wiki/Programmer_art)",
     in style and quality.

   - The images themselves are stored using
     [Git Large File Storage (LFS)](http://git-lfs.github.com/):
     it makes sense to install this first, otherwise that content appears
     as a set of pointers to data vs. the data itself.
   
   - Otherwise, you might want to regenerate them:
   
     - Install the
       [OpenType](http://en.wikipedia.org/wiki/OpenType) [PCap Terminal](http://www.pixelsagas.com/?download=pcap-terminal)
       font; the associated license suggests it is free for non-commercial 
       use.  Having downloaded it, installation should be simple: using
       [Ubutu](http://www.ubuntu.com)
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
