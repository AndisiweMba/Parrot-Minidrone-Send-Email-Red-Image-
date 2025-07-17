
function saveRedImage(rgbVector)
    disp('saveRedImage was called from Simulink');

    persistent imgCounter
    if isempty(imgCounter)
        imgCounter = 1;
    end

    % Define image dimensions
    imgHeight = 120;
    imgWidth = 160;

    % Reshape the input vector into a 3D RGB image
    rgbImage = reshape(rgbVector, [imgHeight, imgWidth, 3]);

    % Normalize and convert the image to uint8
    imgToSave = im2uint8(mat2gray(rgbImage));

    % Define the filename (optional: include counter to avoid overwrite)
    filename = sprintf('redDetected_%d.png', imgCounter);

    % Save the image to disk
    imwrite(imgToSave, filename);
    disp(['Saved image: ', filename]);

    % Try to send an email with the image attached
    try
        sendmail( ...
            'YourEmail@gmail.com', ...
            '⛏️ Red Anomaly Detected in the Field!', ...
            [ ...
                'Good day Recipient! :).', newline, ...
                newline, ...
                'The autonomous survey drone has detected a potential red anomaly on site.', newline, ...
                'Attached is the captured image evidence for your review.', newline, ...
                newline, ...
                'Regards,', newline, ...
                'Drone Unit 3 - Geological Reconnaissance Division' ...
            ], ...
            filename ...
        );
        disp('Email sent successfully.');
    catch ME
        warning(ME.identifier, '%s', ME.message);
        disp('Failed to send email.');
    end

    % Increment the image counter
    imgCounter = imgCounter + 1;
end
