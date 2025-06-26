tellraw @a reloaded
execute as @a at @s run playsound block.amethyst_block.break master @s ~ ~ ~ 1 1 0
execute as @a run function system:inventoryrefill

scoreboard objectives add random dummy
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add deathtimer dummy
scoreboard objectives add deathsentence dummy

#system
scoreboard objectives add tmp dummy
scoreboard objectives add ID dummy
execute unless score $init ID matches -2147483648..2147483647 run scoreboard players set $init ID 0
scoreboard objectives add settings dummy
scoreboard objectives add main dummy
scoreboard objectives add counter dummy
scoreboard objectives add counter2 dummy
scoreboard objectives add counter3 dummy
scoreboard objectives add counter4 dummy
scoreboard objectives add counter5 dummy
scoreboard objectives add timer dummy
scoreboard players set $0 main 0
scoreboard players set $1 main 1
scoreboard players set $2 main 2
scoreboard players set $3 main 3
scoreboard players set $4 main 4
scoreboard players set $5 main 5
scoreboard players set $6 main 6
scoreboard players set $7 main 7
scoreboard players set $8 main 8
scoreboard players set $9 main 9
scoreboard players set $10 main 10
scoreboard players set $20 main 20
scoreboard players set $200 main 200
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
scoreboard objectives add mpcost dummy
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy
scoreboard objectives add carrotuse minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add owner dummy
scoreboard objectives add ownerteam dummy
scoreboard objectives add batorowawin dummy
scoreboard objectives add teamwin dummy
scoreboard objectives add totalwin dummy
scoreboard objectives add bulletcheck dummy
scoreboard objectives add meleeattacker dummy
scoreboard objectives add damageresist minecraft.custom:minecraft.damage_resisted
scoreboard objectives add attacker dummy
scoreboard objectives add afterdamage dummy
scoreboard objectives add dummydamageA dummy
scoreboard objectives add dummydamageB dummy
scoreboard objectives add using dummy
#skillで出したarmor stand/marker用のscoreboard
scoreboard objectives add skills dummy

#star shard
scoreboard objectives add Cstar dummy

#teams
scoreboard objectives add alives dummy
scoreboard objectives modify alives displayautoupdate true
scoreboard objectives modify alives displayname {"color":"white","text":"生存者数"}
scoreboard objectives add teamrule dummy
scoreboard objectives add teamscore dummy
scoreboard players display name $red alives {"color":"red","text":red}
scoreboard players display name $blue alives {"color":"blue","text":blue}
scoreboard players display name $green alives {"color":"green","text":green}
scoreboard players display name $yellow alives {"color":"yellow","text":yellow}
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
scoreboard objectives add hp2 dummy
scoreboard objectives add mp dummy
scoreboard objectives add maxhp dummy
scoreboard objectives add maxmp dummy
scoreboard objectives add mr dummy
scoreboard objectives add defence dummy
scoreboard objectives add physicaldef dummy
scoreboard objectives add magicdef dummy
scoreboard objectives add meleedef dummy
scoreboard objectives add rangedef dummy
scoreboard objectives add vit dummy
scoreboard objectives add speed dummy
scoreboard objectives add damage dummy
scoreboard objectives add physicaldmg dummy
scoreboard objectives add magicdmg dummy
scoreboard objectives add meleedmg dummy
scoreboard objectives add rangedmg dummy
scoreboard objectives add statscalc dummy
scoreboard objectives add cc dummy
scoreboard objectives add agi dummy
scoreboard objectives add maxeng dummy
scoreboard objectives add eng dummy
scoreboard objectives add attackspeed dummy
scoreboard objectives add bonusattackspeed dummy
scoreboard objectives add stats dummy
scoreboard objectives add displayhpA dummy
scoreboard objectives add displayhpB dummy
scoreboard objectives add displaymp dummy
scoreboard objectives add displaymaxhpA dummy
scoreboard objectives add displaymaxhpB dummy
scoreboard objectives add displaymaxmp dummy
scoreboard objectives add absorption dummy
execute as @a unless score @s absorption matches -2147483648..2147483647 run scoreboard players set @s absorption 0
execute as @a unless score @s maxeng matches -2147483648..2147483647 run scoreboard players set @s maxeng 0
scoreboard objectives add eye minecraft.used:minecraft.ender_eye
#後から移動
scoreboard players set @a eng 0

#items
#durabilitycheck

scoreboard objectives add gunreload dummy
#bulletcount
scoreboard objectives add handgun dummy

#固有item用score
scoreboard objectives add perk2 dummy
scoreboard players set @a perk2 0
scoreboard objectives add perk2-2 dummy
scoreboard players set @a perk2-2 0
scoreboard objectives add perk2-3 dummy
scoreboard players set @a perk2-3 0
scoreboard objectives add weapon3 dummy
scoreboard players set @a weapon3 0
scoreboard objectives add weapon3-2 dummy
scoreboard players set @a weapon3-2 0

#buff用
scoreboard objectives add maxhp_buff dummy
scoreboard objectives add maxmp_buff dummy
scoreboard objectives add mr_buff dummy
scoreboard objectives add physicaldef_buff dummy
scoreboard objectives add magicdef_buff dummy
scoreboard objectives add meleedef_buff dummy
scoreboard objectives add rangedef_buff dummy
scoreboard objectives add vit_buff dummy
scoreboard objectives add speed_buff dummy
scoreboard objectives add physicaldmg_buff dummy
scoreboard objectives add magicdmg_buff dummy
scoreboard objectives add meleedmg_buff dummy
scoreboard objectives add rangedmg_buff dummy
scoreboard objectives add cc_buff dummy
scoreboard objectives add agi_buff dummy
scoreboard objectives add maxeng_buff dummy
scoreboard objectives add defence_buff dummy
scoreboard objectives add damage_buff dummy

function system:cooltime/load
