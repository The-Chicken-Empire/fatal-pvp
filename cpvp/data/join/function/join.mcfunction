execute unless score $joindata main matches -2147483648..2147483647 run scoreboard players set $joindata main 1
execute store result score @s playerdata run scoreboard players get $joindata main
scoreboard players add $joindata main 1

#固有item
scoreboard players set @s perk2 0
scoreboard players set @s perk2-2 0
scoreboard players set @s perk2-3 0
scoreboard players set @s weapon3 0
scoreboard players set @s weapon3-2 0
scoreboard players set @s magic7timer 0
scoreboard players set @s magic7tank 0