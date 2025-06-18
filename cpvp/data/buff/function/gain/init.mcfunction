execute unless data storage buff: gain.level run data modify storage buff: level set value 1
execute unless data storage buff: gain.maxlevel run data modify storage buff: maxlevel set value 10000
execute unless data storage buff: gain.duration run data modify storage buff: duration set value -1
execute unless data storage buff: gain.durationunmodifiable run data modify storage buff: gain.durationunmodifiable set value 0b
execute unless data storage buff: gain.levelunmodifiable run data modify storage buff: gain.levelunmodifiable set value 0b
execute unless data storage buff: gain.unreplacable run data modify storage buff: gain.unreplacable set value 0b
execute unless data storage buff: gain.unremovable run data modify storage buff: gain.unremovable set value 0b
execute unless data storage buff: gain.isbuff run data modify storage buff: gain.isbuff set value -1b
execute unless data storage buff: gain.invisible run data modify storage buff: gain.invisible set value 0b
execute unless data storage buff: gain.name run data modify storage buff: gain.name set from storage buff: gain.id

execute store result score #buff-counter1413 counter run data get storage buff: gain.id

execute if score #buff-counter1413 counter matches 0..9 run function buff:gain/init/1 with storage buff: gain
execute if score #buff-counter1413 counter matches 10..99 run function buff:gain/init/2 with storage buff: gain
execute if score #buff-counter1413 counter matches 100..999 run function buff:gain/init/3 with storage buff: gain
scoreboard players reset #buff-counter1413