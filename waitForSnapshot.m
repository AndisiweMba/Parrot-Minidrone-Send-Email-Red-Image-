function waitForSnapshot()
% Automatically saves snapshot after simulation or during flight

disp("📡 Listening for red target trigger...");

timeout = 60; % max seconds to wait (for safety)
startTime = tic;

while toc(startTime) < timeout
    try
        if evalin('base', 'exist(''loggedRGB'', ''var'') && exist(''loggedTrigger'', ''var'')')
            loggedTrigger = evalin('base', 'loggedTrigger');
            loggedRGB = evalin('base', 'loggedRGB');

            triggerIndices = find(loggedTrigger == 1);
            if ~isempty(triggerIndices)
                firstTrigger = triggerIndices(1);
                rgbImage = loggedRGB(:, :, :, firstTrigger);

                % Save to file
                folderName = fullfile(pwd, 'snapshots');
                if ~exist(folderName, 'dir')
                    mkdir(folderName);
                end

                fileName = fullfile(folderName, ...
                    ['redTarget_' datetime("now", 'yyyymmdd_HHMMSS') '.png']);
                imwrite(rgbImage, fileName);
                disp(['✅ Snapshot saved: ' fileName]);
                return;
            end
        end
    catch
        % Just wait a bit and retry
        pause(0.2);
    end
end

disp("⏱️ Timeout reached. No trigger received.");
end
