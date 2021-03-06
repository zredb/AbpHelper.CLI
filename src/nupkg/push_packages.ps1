. ".\common.ps1"

# Get the version
[xml]$proj = Get-Content (Join-Path $rootFolder "AbpHelper/AbpHelper.csproj")
$version = $proj.Project.PropertyGroup.Version

# Publish all packages
& dotnet nuget push ("EasyAbp.AbpHelper." + "$version".Trim() + ".nupkg") -s https://api.nuget.org/v3/index.json

# Go back to the pack folder
Set-Location $packFolder
