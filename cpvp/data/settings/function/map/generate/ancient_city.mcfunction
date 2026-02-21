scoreboard players set $map main 1
kill @e[tag=redmarker]
kill @e[tag=bluemarker]
kill @e[tag=greenmarker]
kill @e[tag=yellowmarker]

setblock -64 2 -64 structure_block{name:"map:ancient_city/ancientcity1",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock -64 2 -32 structure_block{name:"map:ancient_city/ancientcity2",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock -64 2 0 structure_block{name:"map:ancient_city/ancientcity3",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock -64 2 32 structure_block{name:"map:ancient_city/ancientcity4",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock -32 2 -64 structure_block{name:"map:ancient_city/ancientcity5",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock -32 2 -32 structure_block{name:"map:ancient_city/ancientcity6",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock -32 2 0 structure_block{name:"map:ancient_city/ancientcity7",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock -32 2 32 structure_block{name:"map:ancient_city/ancientcity8",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock 0 2 -64 structure_block{name:"map:ancient_city/ancientcity9",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock 0 2 -32 structure_block{name:"map:ancient_city/ancientcity10",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock 0 2 0 structure_block{name:"map:ancient_city/ancientcity11",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock 0 2 32 structure_block{name:"map:ancient_city/ancientcity12",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock 32 2 -64 structure_block{name:"map:ancient_city/ancientcity13",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock 32 2 -32 structure_block{name:"map:ancient_city/ancientcity14",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock 32 2 0 structure_block{name:"map:ancient_city/ancientcity15",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock 32 2 32 structure_block{name:"map:ancient_city/ancientcity16",posX:0,posY:0,posZ:0,sizeX:32,sizeY:48,sizeZ:32,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace

setblock -64 3 -64 redstone_block
setblock -64 3 -32 redstone_block
setblock -64 3 0 redstone_block
setblock -64 3 32 redstone_block
setblock -32 3 -64 redstone_block
setblock -32 3 -32 redstone_block
setblock -32 3 0 redstone_block
setblock -32 3 32 redstone_block
setblock 0 3 -64 redstone_block
setblock 0 3 -32 redstone_block
setblock 0 3 0 redstone_block
setblock 0 3 32 redstone_block
setblock 32 3 -64 redstone_block
setblock 32 3 -32 redstone_block
setblock 32 3 0 redstone_block
setblock 32 3 32 redstone_block

#スポーンポイント
execute positioned -58 15 -58 summon marker run tag @s add redmarker
execute positioned -58 15 57 summon marker run tag @s add bluemarker
execute positioned 57 15 -58 summon marker run tag @s add greenmarker
execute positioned 57 15 57 summon marker run tag @s add yellowmarker

#ケージ生成
setblock -58 13 -58 structure_block{name:"map:cage/redcage",posX:-2,posY:0,posZ:-2,sizeX:5,sizeY:6,sizeZ:5,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock -58 13 57 structure_block{name:"map:cage/bluecage",posX:-2,posY:0,posZ:-2,sizeX:5,sizeY:6,sizeZ:5,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock 57 13 -58 structure_block{name:"map:cage/greencage",posX:-2,posY:0,posZ:-2,sizeX:5,sizeY:6,sizeZ:5,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock 57 13 57 structure_block{name:"map:cage/yellowcage",posX:-2,posY:0,posZ:-2,sizeX:5,sizeY:6,sizeZ:5,rotation:"NONE",mirror:"NONE",mode:"LOAD",strict:1b} replace
setblock -58 14 -58 redstone_block
setblock -58 14 57 redstone_block
setblock 57 14 -58 redstone_block
setblock 57 14 57 redstone_block