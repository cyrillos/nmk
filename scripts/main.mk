ifndef ____nmk_defined__main

#
# Genaral inclusion statement

ifndef ____nmk_defined__include
        include $(__nmk_dir)include.mk
endif

ifndef ____nmk_defined__macro
        include $(__nmk_dir)macro.mk
endif

#
# Anything else might be included with
#
#       $(eval $(call include-once,<name.mk>))
#
# Note the order does matter!

$(eval $(call include-once,tools.mk))
$(eval $(call include-once,utils.mk))
$(eval $(call include-once,rules.mk))
$(eval $(call include-once,build.mk))

#
# Footer
$(__nmk_dir)scripts/main.mk:
	@true
____nmk_defined__main = y
endif
