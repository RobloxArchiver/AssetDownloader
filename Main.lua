local AssetDownloader = {}

local getasset = getsynasset or getcustomasset;
local net = game:HttpGetAsync or game:HttpGet;
local throwerr = function(text) error("[Asset Downloader] " .. text); end;
local toS = tostring;

function AssetDownloader:DownloadAsset(fileName, URL)
    if not isfile(fileName) then
        writefile(fileName, net(URL));
    else
        throwerr("Asset " .. toS(fileName) .. " already exist.");
        return;
    end;
end;

function AssetDownloader:DeleteAsset(fileName)
    if not isfile(fileName) then
        delfile(fileName);
    else
        throwerr("Asset " .. toS(fileName) .. "does not exist.");
        return;
    end;
end;

function AssetDownloader:AssetFolder(folderName)
    if not isfolder(folderName) then
        makefolder(folderName);
    else
        throwerr("Folder " .. toS(folderName) .. "Already exist.");
        return;
    end;
end;

function AssetDownloader:UseAsset(asset)
    if isfile(asset) then
        getasset(asset);
    else
        throwerr("Asset " .. toS(asset) .. " does not exist.");
        return;
    end;
end;

return AssetDownloader;
