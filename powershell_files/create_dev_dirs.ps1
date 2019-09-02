function NewDirs {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True)]
        [String] $Directory)

    if (-not (Test-Path -LiteralPath $Directory)) {
        try {
            New-Item -Path $Directory -ItemType Directory -ErrorAction Stop | Out-Null #-Force
        }
        catch {
            Write-Error -Message "Unable to create directory '$Directory'. Error was: $_" -ErrorAction Stop
        }
        "Successfully created directory '$Directory'."
    }
    else {
        "Directory already existed"
    }
}

$dir_array=@(
    'bash',
    'c',
    'fonts',
    'general',
    'python',
    'windows',
    'web',
    'wsl'
  )

$dir_array | foreach { NewDirs -Directory $env:USERPROFILE\Documents\Development\$_ }
