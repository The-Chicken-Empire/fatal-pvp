tellraw @a loaded
execute as @a at @a run playsound minecraft:block.amethyst_block.break master @s

scoreboard objectives add random dummy
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add deathtimer dummy
scoreboard objectives add deathsentence dummy


#system
scoreboard objectives add settings dummy
scoreboard objectives add main dummy
scoreboard objectives add timer dummy
scoreboard players set $0 main 0
scoreboard players set $2 main 2
scoreboard players set $10 main 10
scoreboard players set $20 main 20
scoreboard players set $400 main 400
scoreboard players set $100 main 100
scoreboard players set $10000 main 10000
scoreboard players set $1000000000 main 1000000000
bossbar add timer [{"color":"white","italic":false,"text":"ゲーム開始まで後"},{"color":"aqua","italic":false,"score":{"name":"$timersec","objective":"main"}},{"color":"white","italic":false,"text":"秒です"}]
bossbar set minecraft:timer style notched_10
bossbar add gametimer aaa
scoreboard objectives add playerdata dummy
scoreboard objectives add damagetaken dummy
scoreboard objectives add damagecalc dummy
scoreboard objectives add damage dummy
scoreboard objectives add sth dummy
scoreboard objectives add selecteditemA dummy
scoreboard objectives add selecteditemB dummy
scoreboard objectives add itemcost dummy
scoreboard objectives add itemcount dummy

#star shard
scoreboard objectives add Cstar dummy

#teams
scoreboard objectives add teamrule dummy
scoreboard objectives add teamscore dummy
team add solo
team add red
team add blue
team add green
team add yellow
team add kansen
team modify solo color dark_purple
team modify red color red
team modify blue color blue
team modify green color green
team modify yellow color yellow
team modify kansen color white
team modify solo friendlyFire true
team modify red friendlyFire false
team modify blue friendlyFire false
team modify green friendlyFire false
team modify yellow friendlyFire false
team modify solo seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true
team modify green seeFriendlyInvisibles true
team modify yellow seeFriendlyInvisibles true
team modify solo nametagVisibility never
team modify red nametagVisibility hideForOtherTeams
team modify blue nametagVisibility hideForOtherTeams
team modify green nametagVisibility hideForOtherTeams
team modify yellow nametagVisibility hideForOtherTeams

scoreboard objectives add teams dummy

#stats
scoreboard objectives add statscalc dummy
scoreboard objectives add hp dummy
scoreboard objectives add mp dummy
scoreboard objectives add maxhp dummy
scoreboard objectives add maxmp dummy
scoreboard objectives add mr dummy
scoreboard objectives add normaldef dummy
scoreboard objectives add magicdef dummy
scoreboard objectives add meleedef dummy
scoreboard objectives add rangedef dummy
scoreboard objectives add vit dummy
scoreboard objectives add speed dummy
scoreboard objectives add normaldmg dummy
scoreboard objectives add magicdmg dummy
scoreboard objectives add meleedmg dummy
scoreboard objectives add rangedmg dummy
scoreboard objectives add statscalc dummy
scoreboard objectives add cc dummy
scoreboard objectives add agi dummy
scoreboard objectives add maxeng dummy
scoreboard objectives add eng dummy
scoreboard objectives add stats dummy

function system:cooltime/load