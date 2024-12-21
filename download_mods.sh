#!/bin/bash

# Instructions for easy editing:
# - Modify the MODS_DIR path to the desired directory.
# - Add or remove mod IDs in the MOD_IDS list.

# Define the target mods directory (change this as needed)
MODS_DIR="/path/to/your/mods/directory"

# Create the mods directory if it doesn't exist
mkdir -p "$MODS_DIR"

# List of mod IDs to download (you can add or remove IDs here)
MOD_IDS=(
  3155557729
  3044609444
  3170805672
  3269291624
  # Add more IDs as needed
)

# Option to log errors to a file
LOG_FILE="mod_download_log.txt"
echo "Starting mod download process..." > "$LOG_FILE"

# Loop through each mod ID
for MOD_ID in "${MOD_IDS[@]}"; do
  echo "Downloading mod ID: $MOD_ID"
  echo "Downloading mod ID: $MOD_ID" >> "$LOG_FILE"

  # Use SteamCMD to download the mod
  steamcmd +force_install_dir "$MODS_DIR" +login anonymous +workshop_download_item 108600 "$MOD_ID" +quit

  # Check if the download was successful
  if [ $? -eq 0 ]; then
    echo "Successfully downloaded mod $MOD_ID"
    echo "Successfully downloaded mod $MOD_ID" >> "$LOG_FILE"
  else
    echo "Failed to download mod $MOD_ID"
    echo "Failed to download mod $MOD_ID" >> "$LOG_FILE"
  fi
done

echo "Download process complete." >> "$LOG_FILE"
