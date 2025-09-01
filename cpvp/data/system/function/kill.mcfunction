#殺したときのスキル発動
execute as @e[tag=atker] run function damage:atktrigger/kill with storage atktrigger: hage
function items:triggers/kill/check
#その他