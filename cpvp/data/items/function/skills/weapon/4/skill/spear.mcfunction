execute at @s run playsound entity.player.attack.sweep player @a ~ ~ ~ 1 2
execute at @s run playsound minecraft:block.amethyst_block.chime block @a ~ ~ ~ 2 0.7

execute if entity @s[tag=weapon4player2.tmp] at @s run particle end_rod ~ ~1 ~ 1 2 1 0.1 40 normal

execute at @s positioned ~ ~1.2 ~ positioned ^0.08 ^ ^0.7 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^0.08 ^ ^0.95 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^0.08 ^ ^1.2 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^0.08 ^ ^1.45 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^0.08 ^ ^1.7 run function items:skills/weapon/4/skill/particle_and_hitbox

execute at @s positioned ~ ~1.2 ~ positioned ^-0.08 ^ ^0.7 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^-0.08 ^ ^0.95 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^-0.08 ^ ^1.2 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^-0.08 ^ ^1.45 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^-0.08 ^ ^1.7 run function items:skills/weapon/4/skill/particle_and_hitbox

execute at @s positioned ~ ~1.2 ~ positioned ^ ^-0.08 ^0.7 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^-0.08 ^0.95 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^-0.08 ^1.2 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^-0.08 ^1.45 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^-0.08 ^1.7 run function items:skills/weapon/4/skill/particle_and_hitbox

execute at @s positioned ~ ~1.2 ~ positioned ^ ^0.08 ^0.7 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^0.08 ^0.95 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^0.08 ^1.2 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^0.08 ^1.45 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^0.08 ^1.7 run function items:skills/weapon/4/skill/particle_and_hitbox

execute at @s positioned ~ ~1.2 ~ positioned ^ ^ ^1.2 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^ ^1.45 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^ ^1.7 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^ ^1.95 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^ ^2.2 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^ ^2.45 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^ ^2.7 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^ ^2.95 run function items:skills/weapon/4/skill/particle_and_hitbox
execute at @s positioned ~ ~1.2 ~ positioned ^ ^ ^3.2 run function items:skills/weapon/4/skill/particle_and_hitbox

tag @e remove weapon4vic.tmp