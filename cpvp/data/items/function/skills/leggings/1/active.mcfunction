tag @s add leggings1atker
execute as @a[distance=..10,gamemode=!spectator] unless score @s teamscore = @a[tag=leggings1atker,limit=1] teamscore at @s run function items:skills/leggings/1/start
execute as @a[distance=..10,gamemode=!spectator] unless score @s teamscore = @a[tag=leggings1atker,limit=1] teamscore at @s run playsound entity.guardian.hurt hostile @s ~ ~ ~ 1 1.3 1
execute as @a[distance=..10,gamemode=!spectator] unless score @s teamscore = @a[tag=leggings1atker,limit=1] teamscore at @s run particle witch ~ ~1 ~ 0.2 0.2 0.2 0.6 30 normal @a
execute at @s run playsound entity.elder_guardian.curse hostile @s ~ ~ ~ 1 1.5 1

function system:cooltime/general/set_ct_leggings {cooltime:240}
tag @s remove leggings1atker