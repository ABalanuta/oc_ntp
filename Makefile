NAME=oc-ntp
VERSION=0.12

DEPS := ntp ntpstat
WORK_DIR=src

POSTINSTALL_SCRIPT=deb/post-install.sh
PREINSTALL_SCRIPT=deb/pre-install.sh
POSTUNINSTALL_SCRIPT=deb/post-uninstall.sh

COMMON_FPM_ARGS=\
	--log error \
	-C $(WORK_DIR) \
	--after-install $(POSTINSTALL_SCRIPT) \
	--before-install $(PREINSTALL_SCRIPT) \
	--after-remove $(POSTUNINSTALL_SCRIPT) \
	--name $(NAME) \
	--version $(VERSION)

.PHONY: package
package:
	fpm -s dir -t deb $(COMMON_FPM_ARGS) $(foreach dep,$(deps),-d $(dep))
	mv $(NAME)_$(VERSION)_*.deb build/
