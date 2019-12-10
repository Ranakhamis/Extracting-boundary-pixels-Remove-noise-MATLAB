%Img1= imread('I1.jpg');
%Img2= imread('I2.jpg');
%Image=Img1-Img2;
%res=abs(Image);
%result=res*255;
%OImage=result+Img2;
%imshow(OImage);

%================================================================================================================
Img1= imread('C:\Users\Rana\Desktop\Lab-03 Neighborhood Operations-20191022T132719Z-001\Lab-03 Neighborhood Operations\Practical\Filters.png');
im = rgb2gray(Img1); %we convert to image to gray bec binary filter that removes noise
im = im2bw(im,0.99); %removes noise
im = bwareaopen(im,500); %removes the dots in the pictures if i give it 20 for ex instead of 500 the dots will appear

out = filter2(ones(3)/9,im); %applying mean filter to remove noise da mesh l built in btw
imshow(out);     

result = edge(out); %edge filter to make the edges only appear without the white area inside it
imshow(result);

%another way (easier)
%Img1= imread('C:\Users\Rana\Desktop\Lab-03 Neighborhood Operations-20191022T132719Z-001\Lab-03 Neighborhood Operations\Practical\Filters.png')

%=================================================================================================================