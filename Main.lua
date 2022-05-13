local AssetDownloader = {}

local getasset = getsynasset or getcustomasset
local net = game:HttpGetAsync or http_request or requests or syn.request

function AssetDownloader.DownloadAsset(fileName, URL)
    if not isfile(fileName) then
        writefile(fileName, net(URL));
    end;
end;

function AssetDownloader.AssetFolder(folderName)
    if not isfolder(folderName) then
        makefolder(folderName);
    end;
end;

function AssetDownloader.UseAsset(asset)
    return getasset(asset);
end;

return AssetDownloader;
