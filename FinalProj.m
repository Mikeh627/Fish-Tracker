FISH1 = imread("FISH1.png");
FISH2 = imread("FISH2.png");
FISH3 = imread("FISH3.png");

resizedFISH1 = imresize(FISH1, [341, 512]);
resizedFISH2 = imresize(FISH2, [341, 512]);
resizedFISH3 = imresize(FISH3, [341, 512]);

grayFISH1 = rgb2gray(FISH1);
grayFISH2 = rgb2gray(FISH2);
grayFISH3 = rgb2gray(FISH3);

level1 = graythresh(grayFISH1);
level2 = graythresh(grayFISH2);
level3 = graythresh(grayFISH3);



BW1 = imbinarize(grayFISH1, level1);
BW2 = imbinarize(grayFISH2, level2);
BW3 = imbinarize(grayFISH3, level3);

figure(1);
imshowpair(FISH1, BW1, 'montage');
figure(2);
imshowpair(FISH2, BW2, 'montage');
figure(3);
imshowpair(FISH3, BW3, 'montage');