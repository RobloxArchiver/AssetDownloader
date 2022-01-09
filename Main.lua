AssetDownloader = {}

function DownloadAsset(fileName, URL)
    if not isfile(fileName) then
        writefile(fileName, game:HttpGet(URL))
    end
end