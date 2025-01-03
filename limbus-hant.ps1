# Function to get Steam installation path from registry
function Get-SteamPath {
    try {
        $steamPath = (Get-ItemProperty -Path "HKCU:\Software\Valve\Steam").SteamPath
        if (-Not (Test-Path -Path $steamPath)) {
            throw "未找到有效的 Steam 路徑。"
        }
        return $steamPath
    } catch {
        Write-Host $_.Exception.Message
        cmd /c pause
        exit
    }
}

# Obtain Steam installation path from registry
$STEAM_PATH = Get-SteamPath

# Read the "libraryfolders.vdf" file to get all Steam library directories
$libraryFoldersPath = Join-Path $STEAM_PATH "steamapps\libraryfolders.vdf"
$libraryFoldersContent = Get-Content -Raw $libraryFoldersPath
$libraryFolders = [regex]::Matches($libraryFoldersContent, '"path"\s+"([^"]+)"') | ForEach-Object { $_.Groups[1].Value }

# Find the installation path of the game Limbus Company
$gamePath = $null
foreach ($folder in $libraryFolders) {
    $manifestPath = Join-Path $folder "steamapps\common\Limbus Company"
    if (Test-Path $manifestPath) {
        $gamePath = Resolve-Path -Path $manifestPath
        break
    }
}
if (-Not ($gamePath)) {
    Write-Output "未找到遊戲 Limbus Company 的安裝目錄，腳本已終止。"
    cmd /c pause
    exit
}
Write-Output "已找到遊戲 Limbus Company 的安裝目錄，繁體中文語言包將安裝於: $gamePath"

# Install 7Zip4Powershell module
if (-Not (Get-Command -Module 7Zip4Powershell -errorAction SilentlyContinue)) {
    Install-Module -Name 7Zip4Powershell -Force
}

# Define GitHub API URLs and download targets
$apiUrls = @(
    "https://api.github.com/repos/LocalizeLimbusCompany/BepInEx_For_LLC/releases/latest",
    "https://api.github.com/repos/SmallYuanSY/LLC_ChineseFontAsset/releases/latest",
    "https://api.github.com/repos/SmallYuanSY/LocalizeLimbusCompany_TW/releases/latest"
)
$targets = @(
    "https.*BepInEx-IL2CPP-x64.*.7z",
    "https.*chinesefont_BIE.*.7z",
    "https.*LimbusLocalize_BIE.*.7z"
)

# Iterate through downloading and decompressing each target
for ($i = 0; $i -lt $apiUrls.Length; $i++) {
    $apiUrl = $apiUrls[$i]
    $target = $targets[$i]

    # Obtain the latest version of JSON data through Invoke-WebRequest
    $response = Invoke-WebRequest -Uri $apiUrl -UseBasicParsing
    $json = $response.Content | ConvertFrom-Json

    # Search URLs with .7z using regex
    $url = ($json.assets.browser_download_url | Select-String -Pattern $target).Matches.Value

    # Download, unzip, and remove compressed files
    $fileName = "limbus_i18n_$i.7z"
    Invoke-WebRequest $url -OutFile $fileName
    Expand-7Zip -ArchiveFileName $fileName -TargetPath $gamePath
    Remove-Item $fileName
}
Write-Output "Limbus Company 繁體中文語言包已順利安裝。"
cmd /c pause
