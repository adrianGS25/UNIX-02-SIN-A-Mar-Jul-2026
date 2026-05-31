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