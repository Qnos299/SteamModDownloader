# Steam Workshop Mod Downloader Script

This script automates the process of downloading multiple mods for a game (Project Zomboid in this case) using SteamCMD. You can easily modify the script to suit your needs.

## Requirements:
- [SteamCMD](https://developer.valvesoftware.com/wiki/SteamCMD) must be installed on your machine.
- A Linux-based operating system is recommended for running this script.

## How to Use:

1. **Set up the target mods directory:**
   - Modify the `MODS_DIR` variable in the script to point to the directory where you want to install the mods.
   - Example: `/home/user/game-mods/`

2. **Customize the list of mods:**
   - The `MOD_IDS` array contains Steam Workshop mod IDs. You can add or remove mod IDs as needed.

3. **Run the script:**
   - Open a terminal and navigate to the directory where the script is located.
   - Run the script:
     ```bash
     ./download_mods.sh
     ```

4. **Check the log:**
   - The script will create a `mod_download_log.txt` file in the current directory. This file will contain the download status for each mod.

## Notes:
- The script uses anonymous login to download mods. Make sure your SteamCMD is set up properly.
- You can modify the script to download mods for any Steam game by changing the App ID (currently set to `108600` for Project Zomboid).

## License:
This script is licensed under the MIT License. Feel free to modify it as needed.
