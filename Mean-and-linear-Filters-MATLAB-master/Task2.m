
img=imread('Joker.bmp');
out=LinearFilter(img,'Mean',3,11,0)
imshow(out);


% Mean Filter
function Mean = MeanMask(Rows,cols)
filter = zeros(Rows,cols)
dim = Rows*cols;
   for i = 1:Rows
      for j = 1:cols
          filter(i,j)= 1/dim;
       end  
   end
   Mean = filter;
   %disp(Mean)
end 
 %Linear Filter
function out = LinearFilter(I, Filter, Rows,cols,Postproc)
   if Filter=='Mean'
      M = MeanMask (Rows,Cols)    
      FilteredImage=imfilter(I,M,'conv');
      out = FilteredImage;
   end   

end