$dir_array='python','wsl','general','windows','web'

$dir_array | foreach { .\NewDir.ps1 -Directory $env:USERPROFILE\Documents\development\$_ }
