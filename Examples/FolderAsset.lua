loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxArchiver/AssetDownloader/main/Main.lua"))()
AssetFolder("Assets")
DownloadAsset("Assets/Checkmark.png", "https://raw.githubusercontent.com/RobloxArchiver/Xapper-Addon-Loader/main/Assets/testing.png")

local check = getasset("Assets/Checkmark.png")

print(check)