$line = "1462"
$line
$flag = $line - "1"


$snes_favoris = GC \\batocera.local\share\roms\snes\gamelist.xml
$test1 = $snes_favoris[$flag]

do {
$flag - "1" 

}
until(
$test1 = $snes_favoris[$flag]
$test1 -match "path"
)

$snes_favoris[$flag]



