include src/libgwater/alsa-mixer.mk

plugins_LTLIBRARIES += \
	alsa/alsa.la


alsa_alsa_la_SOURCES = \
	alsa/src/alsa.c

alsa_alsa_la_CFLAGS = \
	$(AM_CFLAGS) \
	$(ALSA_PLUGIN_CFLAGS)

alsa_alsa_la_LDFLAGS = \
	$(AM_LDFLAGS) \
	-module -avoid-version -export-symbols-regex j4status_input

alsa_alsa_la_LIBADD = \
	$(J4STATUS_PLUGIN_LIBS) \
	$(ALSA_PLUGIN_LIBS) \
	-lm