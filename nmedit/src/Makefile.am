
INCLUDES = \
	-I.. \
	-I../../libs/libpdl \
	-I../../libs/libppf \
	-I../../libs/libnmpatch \
	-I../../libs/libnmprotocol \
	-I/usr/lib64/wx/include/gtk-unicode-2.0 \
	`fltk-config --cxxflags`

LDFLAGS = \
	-L../../libs/libpdl/src \
	-L../../libs/libppf/src \
	-L../../libs/libnmpatch/src \
	-L../../libs/libnmprotocol/src \
	`fltk-config --ldflags`


bin_PROGRAMS = nmedit

nmedit_SOURCES = main.cc synth.cc mainwindow.cc synthview.cc patchview.cc sectionview.cc moduleview.cc
nmedit_LDADD =-lpdl -lnmprotocol -lnmpatch -lppf -ltcl8.6
