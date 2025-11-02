tellraw @a reloaded
execute as @a at @s run playsound block.amethyst_block.break master @s ~ ~ ~ 1 1 0
execute as @a run function system:inventoryrefill

setblock 0 0 0 shulker_box

scoreboard objectives add random dummy
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add deathtimer dummy
scoreboard objectives add deathsentence dummy

#system
gamerule doWeatherCycle false
gamerule naturalRegeneration false
gamerule doMobSpawning false
gamerule disableRaids true
gamerule doMobLoot false
gamerule doTileDrops false
gamerule allowFireTicksAwayFromPlayer false
gamerule blockExplosionDropDecay false
gamerule commandBlockOutput false
gamerule commandModificationBlockLimit 1000000000
gamerule disableElytraMovementCheck true
gamerule disablePlayerMovementCheck true
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting false
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doVinesSpread false
gamerule doWardenSpawning false
gamerule drowningDamage true
gamerule enderPearlsVanishOnDeath true
gamerule fallDamage true
gamerule fireDamage false 
gamerule forgiveDeadPlayers false
gamerule freezeDamage true
gamerule globalSoundEvents false
gamerule keepInventory true
gamerule lavaSourceConversion false
#gamerule logAdminCommands true
#gamerule maxCommandChainLength 1000000000
#gamerule maxCommandForkCount 1000000000
gamerule maxEntityCramming 30
gamerule mobExplosionDropDecay false
gamerule mobGriefing false
gamerule playersNetherPortalCreativeDelay 100
gamerule playersNetherPortalDefaultDelay 100
gamerule playersSleepingPercentage 1
gamerule projectilesCanBreakBlocks false
gamerule randomTickSpeed 3
gamerule reducedDebugInfo false
gamerule sendCommandFeedback true
gamerule showDeathMessages false
gamerule snowAccumulationHeight 8
#gamerule spawnChunkRadius 0
gamerule spectatorsGenerateChunks true
gamerule tntExplodes false
gamerule tntExplosionDropDecay false
gamerule universalAnger false
gamerule waterSourceConversion false

scoreboard objectives add entitydata dummy
execute unless score $base entitydata matches -2147483648..2147483647 run scoreboard players set $base entitydata 1
scoreboard objectives add tmp dummy
scoreboard objectives add tmp2 dummy
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
scoreboard players set $-1 main -1
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
scoreboard players set $23 main 23
scoreboard players set $50 main 50
scoreboard players set $200 main 200
scoreboard players set $400 main 400
scoreboard players set $100 main 100
scoreboard players set $120 main 120
scoreboard players set $10000 main 10000
scoreboard players set $1000000000 main 1000000000
bossbar add timer [{"color":"white","italic":false,"text":"ゲーム開始まで後"},{"color":"aqua","italic":false,"score":{"name":"$timersec","objective":"main"}},{"color":"white","italic":false,"text":"秒です"}]
bossbar set minecraft:timer style notched_10
bossbar add gametimer aaa
scoreboard objectives add playerdata dummy
scoreboard objectives add damagetaken dummy
scoreboard objectives add damagecalc dummy
scoreboard objectives add penetrate dummy
scoreboard objectives add damagepoint dummy
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
scoreboard objectives add meleevictim dummy
scoreboard objectives add damageresist minecraft.custom:minecraft.damage_resisted
scoreboard objectives add attacker dummy
scoreboard objectives add afterdamage dummy
scoreboard objectives add dummydamageA dummy
scoreboard objectives add dummydamageB dummy
scoreboard objectives add using dummy
scoreboard objectives add engcost dummy
scoreboard objectives add hpcost dummy
scoreboard players set @a mpcost 0
scoreboard players set @a hpcost 0
scoreboard players set @a engcost 0
scoreboard objectives add attackerdata dummy
scoreboard objectives add getdamage dummy
scoreboard objectives add allydeathcount dummy
scoreboard objectives add playerdeathcount dummy
scoreboard players set @a allydeathcount 0
scoreboard players set @a playerdeathcount 0

#銃system
scoreboard objectives add bulletspeed dummy
scoreboard objectives add bulletspeedtmp dummy
scoreboard objectives add bulletrange dummy
scoreboard objectives add bulletdamage dummy
scoreboard objectives add bulletparticle dummy

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
team add solo
team add red
team add blue
team add green
team add yellow
team add entitysolo
team add entityred
team add entityblue
team add entitygreen
team add entityyellow
team add kansen
scoreboard players display name $red alives {"color":"red","text":red}
scoreboard players display name $blue alives {"color":"blue","text":blue}
scoreboard players display name $green alives {"color":"green","text":green}
scoreboard players display name $yellow alives {"color":"yellow","text":yellow}
team modify solo color dark_purple
team modify red color red
team modify blue color blue
team modify green color green
team modify yellow color yellow
team modify entitysolo color dark_purple
team modify entityred color red
team modify entityblue color blue
team modify entitygreen color green
team modify entityyellow color yellow
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
scoreboard objectives add ctreduction dummy
#後から移動
scoreboard players set @a eng 0

#items
#durabilitycheck

scoreboard objectives add gunreload dummy
#bulletcount
scoreboard objectives add handgun dummy

#固有item用score
scoreboard objectives add markerid dummy
execute unless score $number markerid matches -2147483648..2147483647 run scoreboard players set $number markerid 0
#汎用
scoreboard objectives add target dummy
scoreboard objectives add counting dummy
scoreboard objectives add counting2 dummy
scoreboard objectives add counting3 dummy

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
scoreboard objectives add leggings1victim dummy
scoreboard objectives add leggings1damage dummy
scoreboard objectives add magic7timer dummy
scoreboard players set @a magic7timer 0
scoreboard objectives add magic7tank dummy
scoreboard players set @a magic7tank 0
scoreboard objectives add helmet2 dummy
scoreboard objectives add offhand4-1 dummy
scoreboard objectives add offhand4-2 dummy
scoreboard objectives add offhand4-3 dummy
scoreboard objectives add magic10 dummy
execute unless score $number magic10 matches -2147483648..2147483647 run scoreboard players set $number magic10 0
scoreboard objectives add magic10-4 dummy
scoreboard objectives add magic11 dummy
scoreboard objectives add magic12 dummy
scoreboard objectives add magic12-2 dummy
scoreboard objectives add magic12-3 dummy
scoreboard objectives add magic12-4 dummy
scoreboard objectives add magic13 dummy
scoreboard objectives add magic13-2 dummy
scoreboard objectives add magic13-3 dummy
scoreboard objectives add magic13-4 dummy
scoreboard objectives add magic13markID1 dummy
scoreboard objectives add magic13markID2 dummy
scoreboard objectives add offhand6 dummy
scoreboard players set @e offhand6 0
scoreboard objectives add weapon4 dummy
scoreboard objectives add weapon8 dummy
scoreboard players set @a weapon8 0
scoreboard objectives add weapon7 dummy
scoreboard players reset @a weapon7
scoreboard players set @a weapon8 0
scoreboard objectives add weapon17ct dummy
scoreboard objectives add offhand9 dummy
scoreboard objectives add perk11 dummy
scoreboard players set @a perk11 0
scoreboard objectives add perk13 dummy
scoreboard players set @a perk13 0
scoreboard objectives add offhand7 dummy
scoreboard objectives add offhand7-2 dummy
scoreboard objectives add perk18 dummy
scoreboard players set @a perk18 0
scoreboard players set $perk20 main 0
scoreboard objectives add magic41ct dummy
#perk31用
scoreboard objectives add tarnished_blood_stage dummy

scoreboard objectives add tarnished_blood_stage dummy
scoreboard objectives add effect45.count dummy
scoreboard objectives add perk24melee dummy
scoreboard objectives add perk24range dummy
scoreboard objectives add perk24magic dummy
scoreboard objectives add perk24physical dummy
scoreboard objectives add boots5 dummy
scoreboard objectives add magic37 dummy
scoreboard objectives add magic35ct dummy
scoreboard objectives add perk28 dummy
scoreboard players set $tmp perk28 0
scoreboard objectives add perk29 dummy
scoreboard players set @a perk29 0
scoreboard objectives add perk25 dummy
scoreboard players set @a perk25 0
scoreboard objectives add perk36 dummy
scoreboard objectives add perk36ct dummy
scoreboard objectives add magic29hitct dummy
scoreboard objectives add magic46using dummy
scoreboard objectives add magic46usingprev dummy
scoreboard objectives add cp19.ct dummy

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
scoreboard objectives add bonusattackspeed_buff dummy
scoreboard objectives add ctreduction_buff dummy

function system:cooltime/load
function system:gui/load
function system:stats_modifier/load

#エフェクト
data modify storage cpvp:effect46 id set value 46
data modify storage cpvp:effect46 duration set value -1
scoreboard objectives add effect46timer dummy

#適当に使うときの汎用markerの召喚
kill 0-0-0-0-0
summon marker 0.0 0.0 0.0 {Tags:["verynicemarker"],UUID:[I;0,0,0,0]}

#仮

