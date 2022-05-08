AssetDownloader = {}

local getasset = getsynasset or getcustomasset
local net = game:HttpGetAsync or http_request or requests or syn.request

function DownloadAsset(fileName, URL)
    if not isfile(fileName) then
        writefile(fileName, net(URL));
    end;
end;

function AssetFolder(folderName)
    if not isfolder(folderName) then
        makefolder(folderName);
    end;
end;

return AssetDownloader
