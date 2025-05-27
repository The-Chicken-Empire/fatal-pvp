
tellraw @a [{"color":"blue","italic":false,"obfuscated":false,"text":"X"},{"bold":true,"color":"yellow","italic":false,"obfuscated":false,"text":"Critical Star"},{"color":"blue","italic":false,"obfuscated":true,"text":"X"},{"bold":false,"color":"white","italic":false,"text":"が"},{"bold":true,"color":"gold","italic":false,"score":{"name":"$Cstarcount","objective":"settings"}},{"bold":false,"color":"white","italic":false,"text":"個配布された！"}]
tellraw @a [{"color":"white","italic":false,"obfuscated":false,"text":"その他の"},{"bold":true,"color":"yellow","italic":false,"obfuscated":false,"text":"Star"},{"bold":false,"color":"white","italic":false,"text":"が合計"},{"bold":true,"color":"gold","italic":false,"score":{"name":"$otherstarcount","objective":"settings"}},{"bold":false,"color":"white","italic":false,"text":"個配布された！"}]

scoreboard players set $nostar main 1
