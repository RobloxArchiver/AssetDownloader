
# AssetDownloader

This project quickly downloads files to the Workspace or folder in workspace to use with any way to get an asset. More exploits should be supported due to UNC.

![](https://scriptunc.org/badge-supported.png)

# Examples

All below are examples of all functions. Remade as of `5/12/2022`.

## Getting the Library

Simple and will be the same for most if not all libraries. 

```lua
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RobloxArchiver/AssetDownloader/main/Main.lua"))()
```

For now on, library will be known for calling the library.

Also everything is a method, use `:` not `.`.

## `DownloadAsset()`

Current usage: Downloads the asset provided. 

```lua
library:DownloadAsset(fileName, URL);
```

To set it to a folder, just set the name as goes. `examplefolder/image.png` 

## `DeleteAsset()`

Deleted the asset speficified. 

```lua
library:DeleteAsset(fileName)
```

Checks if it exists before deleting.

## `AssetFolder(folderName)`

Creates a folder for assets.

```lua
library:AssetFolder(folderName)
```

## `DeletFolder()`

Same as delete asset, except deletes the folder and contents. (good for clearing out assets in whole.)

```lua
library:DeleteFolder(folderName)
```

## `UseAsset()`

Can be replaced with getasset but would be better to just use this as it provides a check.

```lua
library:UseAsset(asset)
```









