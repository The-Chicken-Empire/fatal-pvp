#> stats:show
#
#
#
# @user
# @private

tellraw @s [{"text": "---------- ", "color": "green"},{"selector":"@s", "color": "white"}, {"text":" のステータス", "color": "white"}, {"text": " ----------", "color": "green"}]

tellraw @s [{"text":"最大HP        : ","color":"red"},{"score":{"name":"@s","objective":"maxhp"},"color":"gold"},{"text":"     最大MP : ","color":"blue"},{"score":{"name":"@s","objective":"maxmp"},"color":"gold"}]
tellraw @s [{"text":"回復力        : ","color":"light_purple"},{"score":{"name":"@s","objective":"vit"},"color":"gold"},{"text":"     MP回復力 : ","color":"aqua"},{"score":{"name":"@s","objective":"mr"},"color":"gold"}]
tellraw @s [{"text":"物理防御力    : ","color":"gold"},{"score":{"name":"@s","objective":"physicaldef"},"color":"gold"},{"text":"     魔法防御力 : ","color":"dark_purple"},{"score":{"name":"@s","objective":"magicdef"},"color":"gold"}]
tellraw @s [{"text":"近距離防御力  : ","color":"red"},{"score":{"name":"@s","objective":"meleedef"},"color":"gold"},{"text":"     遠距離防御力 : ","color":"blue"},{"score":{"name":"@s","objective":"rangedef"},"color":"gold"}]
tellraw @s [{"text":"物理攻撃力    : ","color":"gold"},{"score":{"name":"@s","objective":"physicaldmg"},"color":"gold"},{"text":"     魔法攻撃力 : ","color":"dark_purple"},{"score":{"name":"@s","objective":"magicdmg"},"color":"gold"}]
tellraw @s [{"text":"近距離攻撃力  : ","color":"red"},{"score":{"name":"@s","objective":"meleedmg"},"color":"gold"},{"text":"     遠距離攻撃力 : ","color":"blue"},{"score":{"name":"@s","objective":"rangedmg"},"color":"gold"}]
tellraw @s [{"text":"移動速度      : ","color":"white"},{"score":{"name":"@s","objective":"speed"},"color":"gold"},{"text":"     会心率 : ","color":"yellow"},{"score":{"name":"@s","objective":"cc"},"color":"gold"}]
tellraw @s [{"text":"回避率        : ","color":"white"},{"score":{"name":"@s","objective":"agi"},"color":"gold"},{"text":"     最大充電 : ","color":"yellow"},{"score":{"name":"@s","objective":"maxeng"},"color":"gold"}]
tellraw @s [{"text":"攻撃速度      : ","color":"yellow"},{"score":{"name":"@s","objective":"attackspeed"},"color":"gold"},{"text":"     攻撃速度% : ","color":"yellow"},{"score":{"name":"@s","objective":"bonusattackspeed"},"color":"gold"}]
tellraw @s [{"text":"攻撃力%       : ","color":"dark_red"},{"score":{"name":"@s","objective":"damage"},"color":"gold"},{"text":"     防御力% : ","color":"dark_blue"},{"score":{"name":"@s","objective":"defence"},"color":"gold"}]

tellraw @s [{"text": "----------------------------------------", "color": "green"}]
