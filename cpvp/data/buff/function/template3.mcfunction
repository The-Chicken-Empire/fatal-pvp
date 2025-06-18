#function buff:check/ {id:1}
#idで指定したバフを持っているかチェックします。


tag @s add buffer
#バフを付与する側にこのタグをつける。
data modify storage buff: gain.id set value 3
#idです。他の人と被らないようにしろ。※>>>必須<<<
data modify storage buff: gain.level set value 11
data modify storage buff: gain.duration set value 1800



function buff:gain/
#バフを付与します。




