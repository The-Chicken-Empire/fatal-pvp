


execute unless data storage buff: gain.id run tellraw @a [{"color":"red","text":"idが設定されていません!!"}]

execute if data storage buff: gain.id run function buff:check/ with storage buff: gain

execute if data storage buff: gain.id if data storage buff: check
execute if data storage buff: gain.id unless data storage buff: check run function buff:gain/main