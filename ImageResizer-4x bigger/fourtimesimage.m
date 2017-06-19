function fourtimesimage(input)

image = imread(input);
final = twotimesimage(image);
ffinal = twotimesimage(final);

imshow(ffinal./255.0)

end