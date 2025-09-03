#id:識別id,target:id,duration_add:効果時間加算,duration_multiply:効果時間乗算,level:レベル,type:active or passive
#effects: player.effect_modifier.(passive)のリストの中に突っ込む



data remove storage effect: effect_modifier.tmp
function effects:effects_modifier/please with entity @s



$execute if data storage effect: effect_modifier.tmp.active[{id:$(id)}] run return fail
$execute if data storage effect: effect_modifier.tmp.passive[{id:$(id)}] run return fail

data modify storage effect: effect_modifier.tmp2 set value {}
$data modify storage effect: effect_modifier.tmp2.id set value $(id)
$data modify storage effect: effect_modifier.tmp2.target set value $(target)
$data modify storage effect: effect_modifier.tmp2.duration_add set value $(duration_add)
$data modify storage effect: effect_modifier.tmp2.duration_multiply set value $(duration_multiply)
$data modify storage effect: effect_modifier.tmp2.level set value $(level)
$function effects:effects_modifier/$(type) with entity @s