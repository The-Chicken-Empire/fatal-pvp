execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1 1
title @a title {"bold":true,"color":"white","text":"Game Set!"}
execute if score $teamrule settings matches 0 run schedule function system:end/batorowaend 60t
execute if score $teamrule settings matches 1.. run schedule function system:end/teamend 60t
schedule function system:end/reset 160t
