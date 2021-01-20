run("Close All");
open("/Users/tischer/Documents/training-resources/image_data/xy_8bit_binary__nuclei.tif");
rename("binary");
run("Connected Components Labeling", "connectivity=4 type=[8 bits]");
run("glasbey_on_dark");
setMinAndMax(0, 20);
selectWindow("binary");
run("Connected Components Labeling", "connectivity=8 type=[8 bits]");
run("glasbey_on_dark");
setMinAndMax(0, 20);
run("Tile");
