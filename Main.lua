AssetDownloader = {}

function DownloadAsset(fileName, URL)
    if not isfile(fileName) then
        writefile(fileName, game:HttpGet(URL))
    end
end

--[[
    beggining work on the *FOLDER* downloader
    These are two seperate functions
    The FOLDER DOWNLOADER MAKE THE FOLDER ASKED FOR AND DOWNLOADS THE ASSETS TO IT
    DOWNLOADASSET DOWNLOADS JUST THE FILE TO WORKSPACE!
]]

function AssetFolder(folderName)
    if not isfolder(folderName) then
        makefolder(folderName)
    end
end

--[[

    I made it simpler than it was, it will CREATE the folder.

    Usage example:
    (Examples folder, FolderAsset)

]]