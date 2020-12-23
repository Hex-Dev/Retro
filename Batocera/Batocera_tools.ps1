# test Batocera Share
$share = Test-Path \\batocera.local\share\


if ($share -eq $true)
{write-host "Bactorea connecté" -ForegroundColor green}
Else
{write-host "Batocera éteint" -ForegroundColor red}





Function SNES
{


$console = "snes"

$line = Select-String -Path \\batocera.local\share\roms\$console\gamelist.xml -Pattern "<favorite>true" | select LineNumber
$list = $line.LineNumber
write-host ""
write-host $list.count "Favoris" $console ":"
write-host ""


Foreach ($i in $list){

# $snes_favoris = GC \\batocera.local\share\roms\$console\gamelist.xml
$favoris = GC \\batocera.local\share\roms\$console\gamelist.xml

# $i = 1462
Do{

    $i--
   # Write-Host "Ligne = $i"
   # $test = $snes_favoris[$i]
     $test = $favoris[$i]

    # sleep 1


}Until($test -match "path")

# $resultat = $snes_favoris[$i]
$resultat = $favoris[$i]
# write-host $resultat

$A = $resultat -replace "<path>./",""

$B = $A -replace "</path>" , ""

$fichier = $B.TrimStart()
write-host $fichier

$rep = Test-Path $PSScriptRoot\$console
if ($rep -eq $true)
{}
else
{mkdir $PSScriptRoot\$console}


Copy-Item \\batocera.local\share\roms\$console\$fichier $PSScriptRoot\$console


}

}

SNES

Function NES
{


$console = "nes"

$line = Select-String -Path \\batocera.local\share\roms\$console\gamelist.xml -Pattern "<favorite>true" | select LineNumber
$list = $line.LineNumber
write-host ""
write-host $list.count "Favoris" $console ":"
write-host ""


Foreach ($i in $list){

# $snes_favoris = GC \\batocera.local\share\roms\$console\gamelist.xml
$favoris = GC \\batocera.local\share\roms\$console\gamelist.xml

# $i = 1462
Do{

    $i--
   # Write-Host "Ligne = $i"
   # $test = $snes_favoris[$i]
     $test = $favoris[$i]

    # sleep 1


}Until($test -match "path")

# $resultat = $snes_favoris[$i]
$resultat = $favoris[$i]
# write-host $resultat

$A = $resultat -replace "<path>./",""

$B = $A -replace "</path>" , ""

$fichier = $B.TrimStart()
write-host $fichier

$rep = Test-Path $PSScriptRoot\$console
if ($rep -eq $true)
{}
else
{mkdir $PSScriptRoot\$console}


Copy-Item \\batocera.local\share\roms\$console\$fichier $PSScriptRoot\$console


}

}

NES

Function Megadrive
{


$console = "Megadrive"

$line = Select-String -Path \\batocera.local\share\roms\$console\gamelist.xml -Pattern "<favorite>true" | select LineNumber
$list = $line.LineNumber
write-host ""
write-host $list.count "Favoris" $console ":"
write-host ""

Foreach ($i in $list){

# $snes_favoris = GC \\batocera.local\share\roms\$console\gamelist.xml
$favoris = GC \\batocera.local\share\roms\$console\gamelist.xml

# $i = 1462
Do{

    $i--
   # Write-Host "Ligne = $i"
   # $test = $snes_favoris[$i]
     $test = $favoris[$i]

    # sleep 1


}Until($test -match "path")

# $resultat = $snes_favoris[$i]
$resultat = $favoris[$i]
# write-host $resultat

$A = $resultat -replace "<path>./",""

$B = $A -replace "</path>" , ""

$fichier = $B.TrimStart()
write-host $fichier

$rep = Test-Path $PSScriptRoot\$console
if ($rep -eq $true)
{}
else
{mkdir $PSScriptRoot\$console}


Copy-Item \\batocera.local\share\roms\$console\$fichier $PSScriptRoot\$console


}

}

Megadrive

Function mastersystem
{


$console = "mastersystem"

$line = Select-String -Path \\batocera.local\share\roms\$console\gamelist.xml -Pattern "<favorite>true" | select LineNumber
$list = $line.LineNumber
write-host ""
write-host $list.count "Favoris" $console ":"
write-host ""

Foreach ($i in $list){

# $snes_favoris = GC \\batocera.local\share\roms\$console\gamelist.xml
$favoris = GC \\batocera.local\share\roms\$console\gamelist.xml

# $i = 1462
Do{

    $i--
   # Write-Host "Ligne = $i"
   # $test = $snes_favoris[$i]
     $test = $favoris[$i]

    # sleep 1


}Until($test -match "path")

# $resultat = $snes_favoris[$i]
$resultat = $favoris[$i]
# write-host $resultat

$A = $resultat -replace "<path>./",""

$B = $A -replace "</path>" , ""

$fichier = $B.TrimStart()
write-host $fichier

$rep = Test-Path $PSScriptRoot\$console
if ($rep -eq $true)
{}
else
{mkdir $PSScriptRoot\$console}


Copy-Item \\batocera.local\share\roms\$console\$fichier $PSScriptRoot\$console


}

}

mastersystem




Function pcengine
{


$console = "pcengine"

$line = Select-String -Path \\batocera.local\share\roms\$console\gamelist.xml -Pattern "<favorite>true" | select LineNumber
$list = $line.LineNumber
write-host ""
write-host $list.count "Favoris" $console ":"
write-host ""

Foreach ($i in $list){

# $snes_favoris = GC \\batocera.local\share\roms\$console\gamelist.xml
$favoris = GC \\batocera.local\share\roms\$console\gamelist.xml

# $i = 1462
Do{

    $i--
   # Write-Host "Ligne = $i"
   # $test = $snes_favoris[$i]
     $test = $favoris[$i]

    # sleep 1


}Until($test -match "path")

# $resultat = $snes_favoris[$i]
$resultat = $favoris[$i]
# write-host $resultat

$A = $resultat -replace "<path>./",""

$B = $A -replace "</path>" , ""

$fichier = $B.TrimStart()
write-host $fichier

$rep = Test-Path $PSScriptRoot\$console
if ($rep -eq $true)
{}
else
{mkdir $PSScriptRoot\$console}


Copy-Item \\batocera.local\share\roms\$console\$fichier $PSScriptRoot\$console


}

}

pcengine



Function Ebay
{
Write-Host ""
Write-Host "Recherche Ebay "

# Liste des Favoris
$list = Get-ChildItem "C:\Users\seb\Desktop\Batocera\snes\"
$site = "ebay"
$console = "snes+sfc"

foreach ($object in $list){


$modif = $object -replace '.sfc','' -replace "France","" -replace "Europe","" -replace "En,Fr,De","" -replace '[#?\{\[\(\)\]\}]',''
$game=$modif.TrimEnd()
$game=$game -replace " ","+"
$search = "$game+$site+$console"
$search

#Start-Process "chrome.exe" "https://www.google.com/search?q=$search"

#sleep 10


}

}
Ebay


Write-Host ""


# Ma collection snes

$WebResponse = Invoke-WebRequest "https://raw.githubusercontent.com/Hex-Dev/Retro/main/snes"
$mycollect = $WebResponse.Content
$mycollect | Out-File $PSScriptRoot\snes_collection.txt

$content = [System.IO.File]::ReadAllText("$PSScriptRoot\snes_collection.txt")
$content = $content.Trim()
[System.IO.File]::WriteAllText("$PSScriptRoot\snes_collection.txt", $content)


Foreach ( $jeu in $list ){
$collec = gc C:\Users\seb\Desktop\Batocera\snes_collection.txt
$modif = $jeu -replace '.sfc','' -replace "France","" -replace "Europe","" -replace "En,Fr,De","" -replace '[#?\{\[\(\)\]\}]',''
$game=$modif.TrimEnd()
# $game

# $collec = gc $PSScriptRoot\snes_collection.txt
#$collec = gc C:\Users\seb\Desktop\Batocera\snes_collection.txt

foreach ( $match in $collec )
{
# debug write-host $game $match

if ($game -match $match)
{"$game tu as"}
else
{
 
$searchlist = gc C:\Users\seb\Desktop\Batocera\snes_search.txt
$last = $searchlist.count - "1"
$searchlist[$last]
$game | out-file $PSScriptRoot\snes_search.txt -Append }
}


}


# doublons
$searchlist = gc C:\Users\seb\Desktop\Batocera\snes_search.txt

$a 

$a = select-string -path C:\Users\seb\Desktop\Batocera\snes_search.txt -pattern 'Actraiser 2' -CaseSensitive
$i=$a.LineNumber[0] - "1"
$end = $i + "3"


if 
($a[$i].Line -eq $a[$end].Line)
{"OK"}
else
{"NG"}



