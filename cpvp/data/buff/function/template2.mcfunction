#function buff:modify/
#バフの効果内容に変更を加えます。


data modify storage buff: modify.id set value 0
#変更を加えるバフのidをぶち込む。また、buffならバフ、debuffならdebuff、allなら全部のエフェクトに変更が入ります。
data modify storage buff: modify.level set value 0
#数字分だけレベルが上がる。マイナスなら減る。
data modify storage buff: modify.duration set value 0
#数字分だけ効果時間が延びる。マイナスなら減る。

function buff:modify/