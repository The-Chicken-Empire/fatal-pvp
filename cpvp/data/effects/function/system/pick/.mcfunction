data remove storage effect: targeteffect
data remove storage effect: targeteffecttmp
function effects:system/pick/_ with entity @s
$data modify storage effect: targeteffect set from storage effect: targeteffecttmp[{id:$(id)}]