clc
close all
clear all
original = imread('cameraman.tif');
original = double(original);
[row col] = size(original);

secret = imread('testpat1.png');
secret = double(secret);
for x = 1:1:row
    for y = 1:1:col
        temp1 = dec2bin(original(x,y),8);
        temp2 = dec2bin(secret(x,y),8);
        temp1(8) = temp2(1); % Replacing the LSB with the MSB
        temp1(7) = temp2(2); % If we replace more than 1 bit
        temp1(6) = temp2(3); % we start getting the watermark
        temp1(5) = temp2(4);
        %temp1(4) = temp2(5);
        stego(x,y) = bin2dec(temp1);
    end
end
stego = uint8(stego);
imwrite(stego,'newimage.tif');
% above line will create image in our existing folder
subplot(2,2,1)
imshow(uint8(original))
title('Carrier Image');
subplot(2,2,2)
imshow(uint8(secret))
title('Secret Image');
subplot(2,2,3)
imshow(uint8(stego))
title('Stego Image');

%%% Retrieval of Secret Data

image = imread('newimage.tif');
image = double(image);
[row col] = size(image);
for x = 1:1:row
    for y = 1:1:col
        temp = dec2bin(image(x,y),8);% This gives a character value
        if (temp(8)=='0')
            temp='00000000';
            secret_data(x,y)=bin2dec(temp);
        else
            temp='11111111'
            secret_data(x,y) = bin2dec(temp);
        end
    end
end
subplot(2,2,4)
imshow(secret_data)
title('Retrieved Image');