# Script purpose:
# Start by iterating through all contents in root script execution location, checking for directories or just files (handling both?)
# IF directories exist, iterate through them (likely will need to put them in new array for this) and prompt at each for new file name OR TO DELETE FILE. Display old file name in prompt (maybe copy old file name to clipboard?)
    # After, enter every one of the remaining directories and print it's contents (possibly regex out track numbers beforehand / give option to keep or discard this change?)
    # Same process as before, changing file name with old name in prompt or deleting the file (possibly automatically deleting all files that end in .jpg, .jpeg, .png, etc? Or maybe that don't end in .mp3, .mp4, .flac, etc?)
    # Proceed on with next remaining directory
# ELSE perform just file functionality without directory processes

direc = File.dirname(__FILE__)



puts direc