local AssetDownloader = {}

local getasset = getsynasset or getcustomasset;
local net = game:HttpGetAsync or game:HttpGet;
local throwerr = function(text) print("[Asset Downloader Error] " .. text); end;

function AssetDownloader:DownloadAsset(fileName, URL)
    if not isfile(fileName) then
        writefile(fileName, net(URL));
    else
        throwerr("Asset " .. fileName .. " already exist.");
        return;
    end;
end;

function AssetDownloader:DeleteAsset(fileName)
    if isfile(fileName) then
        delfile(fileName);
    else
        throwerr("Asset " .. fileName .. "does not exist.");
        return;
    end;
end;

function AssetDownloader:AssetFolder(folderName)
    if not isfolder(folderName) then
        makefolder(folderName);
    else
        throwerr("Folder " .. folderName .. " already exist.");
        return;
    end;
end;

function AssetDownloader:DeleteFolder(folderName)
    if isfolder(folderName) then
        delfolder(folderName);
    else
        throwerr("Folder " .. folderName .. " does not exist.");
        return;
    end;
end;
        

function AssetDownloader:UseAsset(asset)
    if isfile(asset) then
        getasset(asset);
    else
        throwerr("Asset " .. asset .. " does not exist.");
        return;
    end;
end;

return AssetDownloader;
