#############################################################################
# Name:        makefile for Testdc
# Author:      Marco Cavallini <m.cavallini AT koansoftware.com>
# Copyright:   (C)2004-2006 Copyright by Koan s.a.s. - www.koansoftware.com
# Licence:     KWIC License http://www.koansoftware.com/kwic/kwic-license.htm
#############################################################################


CC = gcc

PROGRAM = Testdc

CFLAGS = -I/m/snowball/icicle/gswd/devenv/include -D__WXGTK__
LFLAGS = -L/m/snowball/icicle/devenv/lib

# implementation

.SUFFIXES:      .o .cpp

SOURCES:sh= /bin/ls *.cpp

OBJECTS = $(SOURCES:.cpp=.o)

.cpp.o :
	$(CC) -c $(CFLAGS) `wx-config --cflags` -o $@ $<

$(PROGRAM): $(OBJECTS)
	$(CC) -o $(PROGRAM) $(OBJECTS) $(LFLAGS) `wx-config --libs`

clean:
	rm -f *.o $(PROGRAM)

