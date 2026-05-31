# Return to the user's home directory
cd ~

# Use 'dd' to create a 50MB file named swapex filled with binary zeros
# if=/dev/zero: Specifies the input file as an infinite source of zeros
# of=/tmp/swapex: Specifies the destination output file path
# bs=1M: Sets the data block size to 1 Megabyte
# count=50: Copies exactly 50 blocks from the input source
dd if=/dev/zero of=/tmp/swapex bs=1M count=50

# Example command to clone an entire hard drive to another at a bit level
# if=/dev/sda: Source hard drive (input)
# of=/dev/sdb: Destination hard drive (output)
# Note: Block size (bs) and count are not required when cloning entire drives
# dd if=/dev/sda of=/dev/sdb

# Change the current working directory to the Documents folder
cd ~/Documents

# Move a single file (people.csv) into a directory (Work)
# The file retains its original name because no new name was specified in the destination
mv people.csv Work

# Verify that the file was successfully moved by listing the contents of the Work directory
ls Work

# Move multiple source files (numbers.txt, letters.txt, alpha.txt) into a single destination directory (School)
# Note: The final argument must always be the destination directory
mv numbers.txt letters.txt alpha.txt School

# Verify the multiple files movement by listing the contents of the School directory
ls School

# Rename a file within the same directory by moving it to a new filename
# This changes 'animals.txt' to 'zoo.txt' without changing its physical location
mv animals.txt zoo.txt

# List the current directory contents to confirm the renaming from animals.txt to zoo.txt
ls

# Change the current working directory to the Documents folder
cd ~/Documents

# Delete a regular file using the rm (remove) command
# Note: Files deleted with rm are permanently removed and do not go to a trash bin
rm linux.txt

# Attempt to verify deletion (this will return a 'No such file or directory' error)
ls linux.txt

# Attempt to delete a directory without options (this will fail with an 'Is a directory' error)
# rm Work

# Delete a directory and all of its contents recursively using the -r option
# Warning: This permanently deletes the directory, its files, and all subdirectories
rm -r Work

# Verify that the directory was successfully deleted
ls Work