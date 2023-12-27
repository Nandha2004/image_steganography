function SpreadSpectrumSteganography()

% Load the cover image coverImage = imread('test_img4.jpeg');

% Convert the cover image to double precision

coverImage = im2double(coverImage);

% Embedding

% Prompt the user for a message

message = input('Enter the message to embed: ', 's');

% Convert the message to binary binaryMessage = str2bin(message);

% Generate a spreading sequence (pseudo-random sequence)

spreadingSequence = rand(size(coverImage)) > 0.5;

% Ensure binaryMessage has the same dimensions as the spreading sequence

binaryMessage = rand(size(coverImage)) > 0.5;

% Replace with your message

% Embed the binary message into the cover image using spread spectrum

stegoImage = coverImage + spreadingSequence .* (binaryMessage - 0.5);

% Adjust the scaling to make it centered around zero

% Display the original cover image

figure;

subplot(2, 1, 1);

imshow(coverImage);

title('Original Cover Image');

% Display the stego image

subplot(2, 1, 2);

imshow(coverImage);

title('Stego Image');

% Saving the stego image

imwrite(stegoImage, 'stego_image.jpg');

% Extraction % Prompt the user to extract the message

prompt = 'Do you want to extract the hidden message (yes/no)? ';

choice = input(prompt, 's');

if strcmpi(choice, 'yes')

% Display the original message

fprintf('Embedded message: %s\n', message);

else

fprintf('Extraction skipped.\n');

endend function binaryMessage = str2bin(message)

binaryMessage = dec2bin(message, 8);

% Convert to binary with 8 bits per character

binaryMessage = binaryMessage(:)' - '0'; % Convert to a binary vectorend