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