
If ($True) {
  <# *** binaries\iso\path *** #>
  $REDIRECT_FROM_LINK="C:\ISO\PATH";
  $REDIRECT_TO_EXISTING="${HOME}\Documents\GitHub\binaries\iso\path";
  <# Make sure destination directory exists #>
  If (Test-Path -PathType "Container" -Path ("${REDIRECT_TO_EXISTING}")) {
    If (Test-Path -PathType "Container" -Path ("${REDIRECT_FROM_LINK}")) { <# Ensure that the source directory (which will become a symbolic link) does NOT exist, and that if it DOES exist, that its files are copied to the destination directory before the source directory is removed #>
      Copy-Item -Path ("${REDIRECT_FROM_LINK}\*") -Destination ("${REDIRECT_TO_EXISTING}") -Force -Recurse;
      Remove-Item -Path ("${REDIRECT_FROM_LINK}") -Recurse -Force -Confirm:$False;
    }
    Start-Process -Filepath ("${env:COMSPEC}") -ArgumentList (@("/C","MKLINK /D `"${REDIRECT_FROM_LINK}`" `"${REDIRECT_TO_EXISTING}`"")) -NoNewWindow -Wait -PassThru -ErrorAction ("SilentlyContinue");
  }
}
