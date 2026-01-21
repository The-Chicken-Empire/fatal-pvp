data remove storage atktrigger: hage
$execute store result storage atktrigger: hage.id int 1 run data get storage cpvp:attackdatae $(entity).id
$data modify storage atktrigger: hage.itemtype set from storage cpvp:attackdatae $(entity).itemtype
$data modify storage atktrigger: hage.atktype set from storage cpvp:attackdatae $(entity).attacktype