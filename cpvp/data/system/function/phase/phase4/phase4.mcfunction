scoreboard players add $phase4timer main 1
execute if score $phase4timer main matches 180 if score $teamrule settings matches 0 run function system:end/batorowaend
execute if score $phase4timer main matches 180 if score $teamrule settings matches 1.. run function system:end/teamend
execute if score $phase4timer main matches 60 run title @a title {"bold":true,"color":"white","text":"Game Set!"}
execute if score $phase4timer main matches 300 run function system:end/reset