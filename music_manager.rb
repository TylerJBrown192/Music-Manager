# Script purpose:
# Start by passing in directory location of what files you want to modify, iterating through all contents and checking for directories or just files (handling both?)
# IF directories exist, iterate through them (likely will need to put them in new array for this) and prompt at each for new file name OR TO DELETE FILE. Display old file name in prompt (maybe copy old file name to clipboard?)
    # After, enter every one of the remaining directories and print it's contents (possibly regex out track numbers beforehand / give option to keep or discard this change?)
    # Same process as before, changing file name with old name in prompt or deleting the file (possibly automatically deleting all files that end in .jpg, .jpeg, .png, etc? Or maybe that don't end in .mp3, .mp4, .flac, etc?)
    # Proceed on with next remaining directory
# ELSE perform just file functionality without directory processes
# Finally, copy file from current location to external drive (possibly move instead of copy once script is proven to cover all cases then delete file?)

arg_dir = ARGV.first
arg_contents = Dir.entries(arg_dir)
arg_contents.shift(2) # Removes first two elements of the Array returned by Dir.entries, as they are always '.' and '..'

# TODO: This entire process will eventually need to be a recursive function, as the directory could have 10000 nested directories

new_dirs_array = []
# Not performing a .select to return a new array because we want to check file types
arg_contents.each { |x|
    # arg_dir + String will not work when this is recursive
    dir_loc = arg_dir + "/" + x

    if File.directory?(dir_loc)
        new_dirs_array.push(dir_loc)
    else
        puts "#{x} is not a directory. Enter 'd' to DELETE or 's' to SKIP."
        usr_input = $stdin.gets

    end
}
