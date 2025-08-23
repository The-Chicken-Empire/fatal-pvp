

data modify storage effect: data.id set value 23
#idです。他の人と被らないようにしろ。※>>>必須<<<
data modify storage effect: data.maxlevel set value 60
#バフの最大レベルです。初期値1
data modify storage effect: data.content set value [["speed",1,0]]
#バフにステータス上昇効果がある場合はここに突っ込んでください。
#最大体力:maxhp 最大mp:maxmp マナリゲネ:mr 物理耐性:phyisicaldef 魔法耐性:magicdef
#近接耐性:meleedef 遠隔耐性:rangedef 回復量:vit 移動速度:speed
#物理ダメ増:phyisicaldmg 魔法ダメ増:magicdmg 近接ダメ増:meleedmg 遠隔ダメ増:rangedmg
#回心率:cc 回避力:agi 充電最大値:maxeng 攻撃力:damage 防御力:defense
#リストには[増やすstats,1レベルごとの増加量,レベルに関係ない増加量]をつっこむ。
#初期値なし
data modify storage effect: data.isbuff set value -1b
#1bならバフ 0bならデバフ それ以外なら-1b(????)にしといてください。初期値-1b
data modify storage effect: data.invisible set value 0b
#1bだとアイコンが表示されなくなります。初期値0b




