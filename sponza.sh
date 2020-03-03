
for i in {1..64..2}
do
	rot=$(awk "BEGIN {print ($i - 1) * 2.8125}")
	sed -i "/.*Rotate.*/c\Rotate $rot 1 0 0" "Program_2_5608/HW2 Scenes/sponza.pbrt"

	./build/Release/pbrt.exe "Program_2_5608/HW2 Scenes/sponza.pbrt" --outfile 'Results/sponza_'"$i"'_0.png' --exponent 0 --frame "$i"
	sleep 1
	./build/Release/pbrt.exe "Program_2_5608/HW2 Scenes/sponza.pbrt" --outfile 'Results/sponza_'"$i"'_12.png' --exponent 12 --frame "$i"
	sleep 1
	./build/Release/pbrt.exe "Program_2_5608/HW2 Scenes/sponza.pbrt" --outfile 'Results/sponza_'"$i"'_14.png' --exponent 14 --frame "$i"
	sleep 1
	./build/Release/pbrt.exe "Program_2_5608/HW2 Scenes/sponza.pbrt" --outfile 'Results/sponza_'"$i"'_16.png' --exponent 16 --frame "$i"
	sleep 1


done