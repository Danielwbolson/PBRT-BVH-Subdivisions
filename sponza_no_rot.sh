
for i in {0..24..2}
do
	./build/Release/pbrt.exe "Program_2_5608/HW2 Scenes/sponza.pbrt" --outfile 'Results/sponza_'"$i"'.png' --exponent "$i"
	sleep 1
done