function output = img_blur(img, w)
    % Ensure the input image is of type double for accurate computations
    img = double(img);

    % Get the size of the input image
    [rows, cols] = size(img);

    % Initialize the output image
    output = uint8(zeros(rows, cols));

    % Iterate through each pixel in the image
    for i = 1:rows
        for j = 1:cols
            % Define the boundaries of the submatrix
            rowStart = max(1, i - w);
            rowEnd = min(rows, i + w);
            colStart = max(1, j - w);
            colEnd = min(cols, j + w);

            % Extract the submatrix
            submatrix = img(rowStart:rowEnd, colStart:colEnd);

            % Compute the mean of the submatrix and assign it to the output pixel
            output(i, j) = uint8(mean(submatrix(:)));
        end
    end
end
