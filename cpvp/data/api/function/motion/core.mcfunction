execute store result score #counter0931248 counter run data get storage api: motion.power
data modify storage api: motion.x set from storage api: motion.rotation[0]
data modify storage api: motion.y set from storage api: motion.rotation[1]




execute if score #counter0931248 counter matches 1.. at @s run function api:motion/recurse with storage api: motion
