# Copyright (C) 2019 SCARV project <info@scarv.org>
#
# Use of this source code is restricted per the MIT license, a copy of which 
# can be found at https://opensource.org/licenses/MIT (or should be included 
# as LICENSE.txt within the associated archive or repository).

TARGETS  = ./master.pdf

TARGETS += $(foreach STYLE,plain fancy,./pdf/logo-${STYLE}.pdf)
TARGETS += $(foreach STYLE,plain fancy,./svg/logo-${STYLE}.svg)

TARGETS += $(foreach STYLE,plain fancy,$(foreach WD,200 400 800,./png/logo-${STYLE}-${WD}.png   ))
TARGETS += $(foreach STYLE,plain fancy,$(foreach WD,200 400 800,./png/logo-${STYLE}-${WD}-bw.png))
TARGETS += $(foreach STYLE,plain fancy,$(foreach WD,200 400 800,./png/logo-${STYLE}-${WD}-wb.png))

./master.pdf             : ./master.tex
	@xelatex ${<}

./pdf/logo-plain.pdf     : ./master.pdf
	@pdfjam --outfile ${@} ${<} 1 ; pdfcrop ${@} ${@}
./pdf/logo-fancy.pdf     : ./master.pdf
	@pdfjam --outfile ${@} ${<} 2 ; pdfcrop ${@} ${@}

define generate
./svg/logo-${1}.svg      : ./pdf/logo-${1}.pdf
	@convert -colorspace sRGB              $${<}                         -transparent '#FFFFFF' $${@}

./png/logo-${1}-%.png    : ./pdf/logo-${1}.pdf
	@convert -colorspace sRGB -density 660 $${<} -fuzz 600 -resize $${*} -transparent '#FFFFFF' $${@}

./png/logo-${1}-%-bw.png : ./png/logo-${1}-%.png
	@convert -colorspace gray -colors 256 $${<}         $${@}

./png/logo-${1}-%-wb.png : ./png/logo-${1}-%.png
	@convert -colorspace gray -colors 256 $${<} -negate $${@}
endef

$(foreach STYLE,plain fancy,$(eval $(call generate,${STYLE})))

all      : ${TARGETS}

clean    :
	@rm -f *.aux *.log
spotless : clean
	@rm -f *.pdf ./pdf/* ./svg/* ./png/*
