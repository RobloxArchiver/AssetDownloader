AssetDownloader = {}

local getasset = getsynasset or getcustomasset -- I didn't know Script-Ware could use gca
local net =  syn.request or httpget or http_request or game:HttpGetAsync or requests
-- if you know anymore I can use please make a pull request :)

function DownloadAsset(fileName, URL)
    if not isfile(fileName) then
        writefile(fileName, net(URL))
    end
end

function AssetFolder(folderName)
    if not isfolder(folderName) then
        makefolder(folderName)
    end
end

return AssetDownloader

--[[

Supported List:
    KRNL (Free)
    Script-Ware ($20)
    Synapse X (x.synapse.to Synapse winning $20)

]]
