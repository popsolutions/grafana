# Grafana TurnKey Linux Appliance Makefile
COMMON_OVERLAYS += tkl-webcp
COMMON_CONF += tkl-webcp

#include $(FAB_PATH)/common/mk/turnkey/grafana.mk
include $(FAB_PATH)/common/mk/turnkey.mk
