data remove storage atktrigger: hage
$execute store result storage atktrigger: hage.id int 1 run data get storage cpvp:attackdata $(player).id
$data modify storage atktrigger: hage.itemtype set from storage cpvp:attackdata $(player).itemtype
$data modify storage atktrigger: hage.atktype set from storage cpvp:attackdata $(player).attacktype