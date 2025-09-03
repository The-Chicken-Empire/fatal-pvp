execute store result score #effect-counter93817 counter run data get storage effect: effect_modifier.tmp2.level
scoreboard players operation #effect-counter47481 counter4 += #effect-counter93817 counter
execute store result score #effect-counter93817 counter run data get storage effect: effect_modifier.tmp2.duration_add
scoreboard players operation #effect-counter47481 counter5 += #effect-counter93817 counter
scoreboard players reset #effect-counter93817
$execute unless score #effect-counter47481 counter2 matches -1 store result storage effect: q[0].duration int $(duration_multiply) run data get storage effect: q[0].duration
