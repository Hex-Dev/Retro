
# test Batocera Share
$share = Test-Path \\batocera.local\share\


if ($share -eq $true)
{write-host "Bactorea connecté" -ForegroundColor green}
Else
{write-host "Batocera éteint" -ForegroundColor red}

Function SNES{
# $snes_favoris = GC \\batocera.local\share\roms\snes\gamelist.xml


$line = Select-String -Path \\batocera.local\share\roms\snes\gamelist.xml -Pattern "<favorite>true" | select LineNumber
$list = $line.LineNumber
$list

Foreach ($num in $list)
{

$flag = $num - "2"
$snes_favoris = GC \\batocera.local\share\roms\snes\gamelist.xml
$test1 = $snes_favoris[$flag]

$snes_favoris[$flag]

if ($test1 -match "players")
{
$players = $flag - "12"
$snes_favoris[$players]
}


if ($test1 -match "genre")
{
$genre = $flag - "11"
$snes_favoris[$genre]
}




sleep 2

}
}

SNES

<#

$calcul = $num - "13"


$num = "1462"

$snes_favoris = GC \\batocera.local\share\roms\snes\gamelist.xml

$test1 = $snes_favoris[$num]
# $test1 = $snes_favoris[$calcul]

if ($test1 -match "path")
{write-host "$snes_favoris[$num]"}

if ($test1 -match "name")
{
$calcul = $calcul - "1"
$snes_favoris[$calcul]
}

$snes_favoris[$calcul]

#>