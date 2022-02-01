first_image_path='D:/546/HW3/HW3/Taylor-Swift.jpg';
second_image_path='D:/546/HW3/HW3/low_frequencies.jpg';

first_image=im2double( rgb2gray(  imread(first_image_path) ) );
second_image=im2double( rgb2gray(  imread(second_image_path) ) );

sigma=6;
gaussian_dimension=3*sigma*2+1;
first_image_high_pass_filtered=highFilter(first_image,gaussian_dimension);
figure('Name','first_image_high_pass_filtered'), imshow(first_image_high_pass_filtered,[]);
first_image_high_pass_filtered = imresize(first_image_high_pass_filtered,[820,867]);

sigma=1;
gaussian_dimension=3*sigma*2+1;
second_image_low_pass_filtered=lowFilter(second_image,gaussian_dimension);
figure('Name','second_image_low_pass_filtered'), imshow(second_image_low_pass_filtered,[]);

final_image=second_image_low_pass_filtered+first_image_high_pass_filtered;
figure('Name','second_image_low_pass_filtered'), imshow(final_image, []);