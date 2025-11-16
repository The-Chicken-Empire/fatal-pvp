# NobwRALgngDgpmAXGANgSwHYIDRgK55oAmSYAHAMZkAsArAOwBMRAtAGwBmADHC9QEZs2LMmQDM9FgEMAjBwCcMivw6MuMsWFwYpAWwTJAW74ACGVrAwpAJz0BnJOAoB7PBghIZXXBytPdDsAA3KRQ8A3AADyQWRlwoDwA6NgBfZNwIJwDg0PCwKMRYsHiChLJU3CcODls4d0QvMH44AC80OCtomQSZXDRbACEWtqsAUQBHPBCUKABlSwo4EkQOEJry8Gh4UnQscwJiUjYyKSYyJWkONlZqChlWKSI2fhYOMS5GG9pFBilzHX1SCYZCxnDB4rhLDZdPZEI4XG4PA0fH4siEwgF8jE4okZOVIJlYUE0bl8oViowEmI8ZVqrUkA0mq12p1ur0BkN2uNJihpnMpAslisUGtkgBdIA_3
##演出
playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1.1
particle sweep_attack ^-2 ^ ^1.1 0 0 0 0 1 force
particle sweep_attack ^-1.62 ^ ^1.44 0 0 0 0 1 force
particle sweep_attack ^-1.22 ^ ^1.73 0 0 0 0 1 force
particle sweep_attack ^-0.81 ^ ^1.97 0 0 0 0 1 force
particle sweep_attack ^-0.38 ^ ^2.15 0 0 0 0 1 force
particle sweep_attack ^0.07 ^ ^2.29 0 0 0 0 1 force
particle sweep_attack ^0.53 ^ ^2.37 0 0 0 0 1 force
particle sweep_attack ^1 ^ ^2.4 0 0 0 0 1 force
particle sweep_attack ^1.49 ^ ^2.37 0 0 0 0 1 force
particle sweep_attack ^2 ^ ^2.3 0 0 0 0 1 force
particle sweep_attack ^-2 ^ ^1.6 0 0 0 0 1 force
particle sweep_attack ^-1.62 ^ ^1.94 0 0 0 0 1 force
particle sweep_attack ^-1.22 ^ ^2.23 0 0 0 0 1 force
particle sweep_attack ^-0.81 ^ ^2.47 0 0 0 0 1 force
particle sweep_attack ^-0.38 ^ ^2.65 0 0 0 0 1 force
particle sweep_attack ^0.07 ^ ^2.79 0 0 0 0 1 force
particle sweep_attack ^0.53 ^ ^2.87 0 0 0 0 1 force
particle sweep_attack ^1 ^ ^2.9 0 0 0 0 1 force
particle sweep_attack ^1.49 ^ ^2.87 0 0 0 0 1 force
particle sweep_attack ^2 ^ ^2.8 0 0 0 0 1 force
##パーティクルと同じ位置で判定をとる
execute positioned ^-2 ^ ^1.1 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^-1.62 ^ ^1.44 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^-1.22 ^ ^1.73 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^-0.81 ^ ^1.97 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^-0.38 ^ ^2.15 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^0.07 ^ ^2.29 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^0.53 ^ ^2.37 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^1 ^ ^2.4 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^1.49 ^ ^2.37 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^2 ^ ^2.3 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^-2 ^ ^1.6 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^-1.62 ^ ^1.94 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^-1.22 ^ ^2.23 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^-0.81 ^ ^2.47 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^-0.38 ^ ^2.65 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^0.07 ^ ^2.79 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^0.53 ^ ^2.87 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^1 ^ ^2.9 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^1.49 ^ ^2.87 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
execute positioned ^2 ^ ^2.8 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=playing,dx=0] as @e[tag=playing,dx=0] unless score @s teamscore = @e[tag=weapon4tmp,limit=1] teamscore run function items:skills/weapon/4_old/hit
##weapon4victmpを削除(詳しくはhit.mcfunction)
execute if entity @e[tag=weapon4victmp] run tag @e remove weapon4victmp