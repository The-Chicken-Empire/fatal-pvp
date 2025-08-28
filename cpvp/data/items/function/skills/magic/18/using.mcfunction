execute anchored eyes run particle block{block_state:"minecraft:redstone_block"} ^ ^ ^ 0 0 0 1 1
execute if predicate items:magic/18/_ run playsound block.wool.break master @a ~ ~ ~ 0.5 1
execute if predicate items:magic/18/ at @s run function items:skills/magic/18/heal