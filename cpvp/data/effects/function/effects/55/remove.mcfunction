attribute @s step_height modifier remove effect55
attribute @s safe_fall_distance modifier remove effect55
attribute @s gravity modifier remove effect55
execute at @s run playsound block.respawn_anchor.deplete block @a ~ 1 ~ 1 0.5 0
execute at @s run particle dust_color_transition{from_color:16775968,scale:1.5,to_color:5395026} ~ ~1 ~ 1 2 1 0 40