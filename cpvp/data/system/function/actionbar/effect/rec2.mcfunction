
execute store result score #effect-counter8787 counter2 run data get storage effect: tmp[0].id
execute store result storage effect: tntn int 1 run scoreboard players get #effect-counter8787 counter2
execute if score #effect-counter8787 counter2 matches 0..9 run function system:actionbar/effect/0_9_ with storage effect:
execute if score #effect-counter8787 counter2 matches 10..99 run function system:actionbar/effect/10_99_ with storage effect:
execute if score #effect-counter8787 counter2 matches 100..999 run function system:actionbar/effect/100_999_ with storage effect:




execute store result score #effect-counter8787 counter2 run data get storage effect: tmp[0].level 1
execute if score #effect-counter8787 counter2 matches 100.. run data modify storage effect: actionbar append value [{"text":"\uB018","font":"space"},{"text":"+99","font":"effect/level"}]
execute if score #effect-counter8787 counter2 matches -1 run data modify storage effect: actionbar append value '{"text":"\uB011","font":"space"},{"text":"∞","font":"effect/level"},{"text":"\uC005","font":"space"}'

execute store result storage effect: tntn int 1 run scoreboard players get #effect-counter8787 counter2
execute if score #effect-counter8787 counter2 matches 10..99 run function system:actionbar/effect/10_99__ with storage effect:
execute if score #effect-counter8787 counter2 matches 0..9 run function system:actionbar/effect/0_9__ with storage effect:
data remove storage effect: tntn







execute store result score #effect-counter8787 counter2 run data get storage effect: tmp[0].duration 0.05
execute if score #effect-counter8787 counter2 matches 100.. run data modify storage effect: actionbar append value [{"text":"\uB018","font":"space"},{"text":"+99","font":"effect/duration"}]
execute if score #effect-counter8787 counter2 matches -1 run data modify storage effect: actionbar append value '{"text":"\uB011","font":"space"},{"text":"∞","font":"effect/duration"},{"text":"\uC005","font":"space"}'

execute store result storage effect: tntn int 1 run scoreboard players get #effect-counter8787 counter2
execute if score #effect-counter8787 counter2 matches 10..99 run function system:actionbar/effect/10_99 with storage effect:
execute if score #effect-counter8787 counter2 matches 0..9 run function system:actionbar/effect/0_9 with storage effect:
data remove storage effect: tntn




scoreboard players add #effect-counter8787 counter 1
