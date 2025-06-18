$execute unless data storage buff: {temp:{id:$(id),levelunmodifiable:1b}} run function buff:modify/level with storage buff: check

$execute unless data storage buff: {temp:{id:$(id),durationunmodifiable:1b}} unless data storage buff: {temp:{id:$(id),duration:-1}} run function buff:modify/duration with storage buff: check




scoreboard players reset #buff-counter41412





