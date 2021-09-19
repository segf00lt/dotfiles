#!/bin/sh

# compress images

while [ "$#" -gt 0 ]; do
	if [ -d "$1" ]; then
	elif [ -f "$1" ]; then

	else
	fi

done

for file in *; do
	#[[ $file == "comp.sh" ]] && continue;

	# convert requires imagemagik
	convert $file \
	-sampling-factor 4:2:0 \
	-strip \
	-quality 85 \
	-interlace Plane \
	-gaussian-blur 0.05 \
	-colorspace RGB \
	$file
done
