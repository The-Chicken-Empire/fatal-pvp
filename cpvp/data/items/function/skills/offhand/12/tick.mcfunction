execute if predicate items:helmet/4/sprint run attribute @s movement_speed modifier add offhand12-0 0.3 add_multiplied_base
execute if predicate items:helmet/4/sprint run attribute @s movement_speed modifier remove offhand12-1
execute unless predicate items:helmet/4/sprint run attribute @s movement_speed modifier add offhand12-1 -0.3 add_multiplied_base
execute unless predicate items:helmet/4/sprint run attribute @s movement_speed modifier remove offhand12-0