clc
clear


%address for source: HW_01_96931111/source
%address for results: HW_01_96931111/results/ans3


% pre-processing
img1=dicomread('IM-9833-0001.dcm');
h = fspecial('average',5);
jj=imfilter(img1,h);
img1_adj = imadjust(jj);


img_edg_sobel= edge(img1,'Sobel');
img_edg_canny= edge(img1_adj,'Canny');


figure

subplot(1,2,1)
imshow(img_edg_sobel)
title('Sobel')

subplot(1,2,2)
imshow(img_edg_canny)
title('Canny')

