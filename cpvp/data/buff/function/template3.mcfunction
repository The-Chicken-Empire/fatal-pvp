#バニラにあるバフを付けるときのやつです。idと対応したeffectが何かはスプレッドシートみて確認してください。

tag @s add buffer
#バフを付与する側にこのタグをつける。>>>>ＤＡＩＪＩ<<<<
data modify storage buff: gain.id set value 14
#idです。他の人と被らないようにしろ。※>>>必須<<<
data modify storage buff: gain.level set value 11
data modify storage buff: gain.duration set value 300



function buff:gain/
#バフを付与します。




