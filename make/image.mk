define image_map_tex
  $(addprefix ${BUILD}/image/, $(notdir $(patsubst %.tex, %.pdf, ${1})))
endef

define image_map_dot
  $(addprefix ${BUILD}/image/, $(notdir $(patsubst %.dot, %.pdf, ${1})))
endef

define image_map_eps
  $(addprefix ${BUILD}/image/, $(notdir $(patsubst %.eps, %.pdf, ${1})))
endef

define image_rule_dot
$(call image_map_dot, ${1}) : ${1} 
	@dot -Tps $${<} | ps2pdf - - > $${@}
endef

define image_rule_eps
$(call image_map_eps, ${1}) : ${1} 
	@cat      $${<} | ps2pdf - - > $${@}
endef

define image_rule_tex
$(call image_map_tex, ${1}) : ${1} 
	@TEXINPUTS="${TEXINPUTS}:." pdflatex -output-directory $$(dir $${@}) $$(basename $${<})
	@TEXINPUTS="${TEXINPUTS}:." pdflatex -output-directory $$(dir $${@}) $$(basename $${<})
	@TEXINPUTS="${TEXINPUTS}:." pdflatex -output-directory $$(dir $${@}) $$(basename $${<})
endef

IMAGE_SOURCES_TEX = $(wildcard ./image/*.tex)
IMAGE_TARGETS_TEX = $(foreach FILE, ${IMAGE_SOURCES_TEX}, $(call image_map_tex, ${FILE}))

IMAGE_SOURCES_DOT = $(wildcard ./image/*.dot)
IMAGE_TARGETS_DOT = $(foreach FILE, ${IMAGE_SOURCES_DOT}, $(call image_map_dot, ${FILE}))

IMAGE_SOURCES_EPS = $(wildcard ./image/*.eps)
IMAGE_TARGETS_EPS = $(foreach FILE, ${IMAGE_SOURCES_EPS}, $(call image_map_eps, ${FILE}))

$(foreach FILE,${IMAGE_SOURCES_TEX},$(eval $(call image_rule_tex,${FILE})))
$(foreach FILE,${IMAGE_SOURCES_DOT},$(eval $(call image_rule_dot,${FILE})))
$(foreach FILE,${IMAGE_SOURCES_EPS},$(eval $(call image_rule_eps,${FILE})))

IMAGE_SOURCES     = ${IMAGE_SOURCES_TEX} ${IMAGE_SOURCES_DOT} ${IMAGE_SOURCES_EPS}
IMAGE_TARGETS     = ${IMAGE_TARGETS_TEX} ${IMAGE_TARGETS_DOT} ${IMAGE_TARGETS_EPS}
