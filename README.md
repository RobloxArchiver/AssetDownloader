
# AssetDownloader

This project quickly downloads files to the Workspace or folder in workspace to use with getsynasset.
# Supported Exploits
- [KRNL](https://krnl.ca/ )

- [Script-Ware](https://script-ware.com/)

- [Synapse X](https://x.synapse.to/)

# Examples

`DownloadAsset(fileName, URL)` will download the asset of said URL.

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxArchiver/AssetDownloader/main/Main.lua"))()
DownloadAsset("Checkmark.png", "https://raw.githubusercontent.com/RobloxArchiver/Xapper-Addon-Loader/main/Assets/testing.png")

local Checkmark = getasset("Checkmark.png")

print(Checkmark)
```
2nd example using 
`AssetFolder()`
```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxArchiver/AssetDownloader/main/Main.lua"))()
AssetFolder("Assets")
DownloadAsset("Assets/Checkmark.png", "https://raw.githubusercontent.com/RobloxArchiver/Xapper-Addon-Loader/main/Assets/testing.png")

local check = getasset("Assets/Checkmark.png")

print(check)
```
