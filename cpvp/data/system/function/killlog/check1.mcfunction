execute as @a if score @s playerdata = @a[tag=tmpdied,limit=1] attacker run tag @s add tmpkiller
execute unless entity @a[tag=tmpkiller] run function system:killlog/unlessattacker

$execute if data storage cpvp:attackdata $(tmp).noitem run return run function system:killlog/noitem
$execute if data storage cpvp:attackdata $(tmp) run function system:killlog/ifdata with storage cpvp:attackdata $(tmp)

tag @a remove tmpkiller