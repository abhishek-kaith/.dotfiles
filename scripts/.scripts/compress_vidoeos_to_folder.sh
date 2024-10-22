
#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input_directory output_directory"
    exit 1
fi

INPUT_DIR="$1"
OUTPUT_DIR="$2"

mkdir -p "$OUTPUT_DIR"

# Use a for loop to handle each .mp4 file correctly
for video in "$INPUT_DIR"/*.MP4; do
    if [ -f "$video" ]; then  # Check if the file exists
        filename=$(basename "$video")
        ffmpeg -i "$video" -vcodec libx264 -crf 20 "$OUTPUT_DIR/$filename"
    else
        echo "No .mp4 files found in $INPUT_DIR"
    fi
done

