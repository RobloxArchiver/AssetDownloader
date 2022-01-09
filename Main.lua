_G.AssetDownloader = {}

function _G.AssetDownloader.DownloadAsset(fileName, URL)
    if isfile(fileName) then
        if readfile(fileName) ~= game:HttpGet(URL) then
           writefile(fileName, game:HttpGet(URL);
        end
     else
        writefile(fileName, game:HttpGet(URL);
     end
end