AssetDownloader = {}

local getasset = getsynasset or getcustomasset -- I didn't know Script-Ware could use gca

function DownloadAsset(fileName, URL)
    if not isfile(fileName) then
        writefile(fileName, game:HttpGet(URL))
    end
end

function AssetFolder(folderName)
    if not isfolder(folderName) then
        makefolder(folderName)
    end
end

return AssetDownloader