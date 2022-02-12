loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxArchiver/AssetDownloader/main/Main.lua"))()
DownloadAsset("Checkmark.png", "https://raw.githubusercontent.com/RobloxArchiver/Xapper-Addon-Loader/main/Assets/testing.png")
DownloadAsset("MOOSH.png", "https://www.pinclipart.com/picdir/middle/447-4473590_random-png-transparent-background-imagenes-random-png-clipart.png")

local Checkmark = getasset("Checkmark.png")
local MOOSH = getasset("MOOSH.png")

print("Image 1: " .. Checkmark .. "CHECKMARK \n Image 2: " .. MOOSH .. "MOOSHROOM")