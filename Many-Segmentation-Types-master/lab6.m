
img = imread('C:\Users\Rana\Desktop\Students lab 5\Images\4.png');

g_img= rgb2gray(img);
e_img= edge(g_img , 'canny');

d_img = imdilate(e_img ,ones(5,5));
n_img = ~d_img;
[l_img , num ] = bwlabel(n_img);
rgb_img = label2rgb(l_img);

f=imshow(rgb_img);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%practise 2

% 
% img = imread('C:\Users\Rana\Desktop\Students lab 5\Images\1234.png');
% g_img= rgb2gray(img);
% e_img= edge(g_img , 'canny');
% 
% [H,theta,rho] = hough(e_img);
% a=imshow(e_img);
% 
% 
%  P = houghpeaks(H,5,'threshold',ceil(0.5*max(H(:))));
% 
% lines = houghlines(e_img,theta,rho,P,'FillGap',5,'MinLength',7);
% 
% figure, imshow(g_img), hold on
% max_len = 0;
% for k = 1:length(lines)
%    xy = [lines(k).point1; lines(k).point2];
%    plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');
% 
%    % Plot beginnings and ends of lines
%    plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
%    plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');
% 
%    % Determine the endpoints of the longest line segment
%    len = norm(lines(k).point1 - lines(k).point2);
%    if ( len > max_len)
%       max_len = len;
%       xy_long = xy;
%    end
% end
% % highlight the longest line segment
% plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','red');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%practise 3

%  img = imread('C:\Users\Rana\Desktop\Students lab 5\Images\b2.jpg');
%  imshow(img);
%  g_img= rgb2gray(img);
%  imshow(g_img);
%  imhist(g_img);
%  im=im2bw(g_img,150/255);
%  imshow(im);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%lab 7
% img= imread('C:\Users\Rana\Desktop\Students lab 5\Images\2.jpg'); 
% %figure,imshow (img)
% [h,w,c]=size(img);
% ze= zeros(h,w,3);
% 
% for i=1:h
%     for j=1:w
%         if img(i,j,1)>100 && (img(i,j,2)+20) < (img(i,j,1)) && (img(i,j,3)+20) < img(i,j,2)
%             ze(i,j,1)= img(i,j,1);
%             ze(i,j,2)= img(i,j,2);
%             ze(i,j,3)= img(i,j,3);
%         end 
%      end 
%  end         
%  figure,imshow(uint8(ze));
%            
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5             
%lab 8

% img= imread('Practical2.png');
% imshow(img);
% img= rgb2gray(img); %convert to gray scale
% figure,imshow(img);
% 
% img=imbinarize(img,0.1); %convert to binary based on thresholding
% figure,imshow(img);
% 
% img2=~img;
% figure,imshow(img2);
% se=strel('disk', 25); %25 as an estiation for the disk size
% ss=imerode(img2, se);
% [L,num] = bwlabel(ss); 
% figure, imshow (ss);
% num;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  del l asleya l tegebly size l project badal ma3mel estimation leh zay a
%  3amalt 25 keda zay mina w ramy
%stats= regionprops(L , 'Centroid' , 'MajorAxisLength' , 'MinorAxisLength');
% diameters= mean ([stats.MajorAxisLength stats.MinorAxisLength],2);
% se=strel('disk', double (uint8(radii-23)),0);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a7awelha gray scale w ba3den thresholding 
% a7awelha gray scale w ba3den thresholding 
% afsel l connection b erosion
% ageeb l size
% bwlabel hatraga3 label w num [L,num]=bwlabel(img)
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5

% img= imread('morph.png');
% img= rgb2gray(double(img)); %convert to gray scale using double for fractions
% img2=imbinarize(img,0.1); %convert to binary based on thresholding
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%FIRST QUESTION
% num_of_whites_pixels = sum(sum(img==1));
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % SECOND QUESTION ( how many objects ? =27)
% [L,num] = bwlabel(img2); 
% num;
% % %second question done w talla3 l answer sa7
% % 
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % % THIRD QUESTION ( how many holes ? =10 holes)
% nimg= imfill(double(img2));
% res= img2- nimg;
% [X,number] = bwlabel(res); 
% imshow (res);
% number;
% % % Third question done w talla3 l answer sa7
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %FOURTH QUESTION ( how many objects have one or more holes?)
% 
% % imgfilled = imfill(img2); % fill holes
% % L = bwlabel(imgfilled); % label each connected component
% % holes = imgfilled - img2; % get only holes
% % componentLabels = unique(nonzeros(L.*holes)); % get labels of components which have at least one hole
% % img2 = img2.*L; % label original image
% % img2(~ismember(img2,componentLabels)) = 0; % delete all components which have no hole
% % img2(img2~=0)=1; % tu
% % [X,number] = bwlabel(img2); 
% % number;
% 
% % img2=~img;
% % figure,imshow(img2);
% % title('Inverted Binarized Original Image');
% 
% % A = logical(img2);
% % stats= regionprops(L, 'EulerNumber');
% % holeIndices = find( [stats.EulerNumber] < 1 ); 
% % holeL = false(size(A));
% % for i = holeIndices
% %     holeL( L == i ) = true;
% % end
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Fifth QUESTION ( how many squares? l mafrood teb2a =8 )
% stats1 =regionprops(L, 'BoundingBox');
% for i=1:num %looping on all objects to check the x,y coordinates
%     x= uint8(stats1(i).BoundaryBox(1)); % [x,y,w,l]--> de array l 'BoundaryBox'
%     y= uint8(stats1(i).BoundaryBox(2));
%     w= uint8(stats1(i).BoundaryBox(3));
%     h= uint8(stats1(i).BoundaryBox(4));
%     if F(x,y) ==1 
%         square_counter=square_counter+1;
%     end
% end
% square_counter;
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%SIXth QUESTION ( )


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%bonus task
%First Question

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %Second Question
% 
% img= imread('Practical1.png');
% imshow(img);
% img= rgb2gray(img); %convert to gray scale
% figure,imshow(img);
% 
% img=imbinarize(img,0.1); %convert to binary based on thresholding
% figure,imshow(img);
% 
% img2=~img;
% figure,imshow(img2);
% se=strel('disk', 25); %25 as an estiation for the disk size
% ss=imerode(img2, se);
% [L,num] = bwlabel(ss); 
% figure, imshow (ss);
% num;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



