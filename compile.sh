#!/bin/sh

haxe compile-c.hxml &&
cd out &&
gcc main.c -o main \
  -I. \
  /usr/local/lib/sdl.hdll \
  /usr/local/lib/ui.hdll \
  /usr/local/lib/fmt.hdll \
  /usr/local/lib/openal.hdll \
  /usr/local/lib/ui.hdll \
  /usr/local/lib/uv.hdll \
  -lhl -lSDL2 -lm -lopenal -lGL -luv
