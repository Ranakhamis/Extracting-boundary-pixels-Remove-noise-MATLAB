
%Img1= imread('Moire1.bmp');
im = rgb2gray(Img1); %convert to gray scale if needed
%figure, imshow(im); %show image
co= fft2(im);
co= fftshift(co);
re=real(co);
im=imag(co);
mag=((re.^2)+(im.^2))/0.5;
log_mag= log(mag);
imshow(log_mag ,[]);

%noise is centred 

%next step to remove noise
%point 1
log_mag(88:72 , 273:258)=0;
figure,imshow(log_mag ,[]);
co(88:72 , 273:258)=0;

%point 2
log_mag(132:122 , 267:257)=0;
imshow(log_mag ,[]);
co(132:122 , 267:257)=0;
%point 3
log_mag(222:205 , 237:255)=0;
co(222:205, 237:255)=0;
imshow(log_mag ,[]);
%point 4
log_mag(262:255 , 228:250)=0;
co(262:255 , 228:250)=0;
imshow(log_mag ,[]);

% out= ifft2(iffshift(co));
% imshow(out ,[]); 