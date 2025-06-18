

#idです。他の人と被らないようにしろ。※>>>必須<<<
#バフのレベルです。付与されるときにこのレベルがついてます。初期値1
#よりレベルの高い同じバフがついていた場合は更新されません。
data modify storage buff: gain.maxlevel set value 3333
#バフの最大レベルです。初期値1
#効果時間です 1秒は20です。-1なら永続です。初期値-1
data modify storage buff: gain.buffcontent set value [["speed",-15,0]]
#バフにステータス上昇効果がある場合はここに突っ込んでください。
#最大体力:maxhp 最大mp:maxmp マナリゲネ:mr 物理耐性:phyisicaldef 魔法耐性:magicdef
#近接耐性:meleedef 遠隔耐性:rangedef 回復量:vit 移動速度:speed
#物理ダメ増:phyisicaldmg 魔法ダメ増:magicdmg 近接ダメ増:meleedmg 遠隔ダメ増:rangedmg
#回心率:cc 回避力:agi 充電最大値:maxeng
#リストには[増やすstats,1レベルごとの増加量,レベルに関係ない増加量]をつっこむ。
#初期値なし
#バフが付与されている間毎ティック実行するファンクションです。初期値なし
#data modify storage buff: gain.functionwhenexpired set value "aaa:aaa/aaa"
data modify storage buff: gain.functiontick set value "cpvp:buff/vanillaeffects/16tick"
#バフの効果が着れたときに実行するファンクションです。初期値なし
#data modify storage buff: gain.customdata set value []
#格納したいデータがあったら格納しといてください。
#バフ終了時のファンクションでは、buff: customdataに格納されています。初期値なし
#data modify storage buff: gain.durationunmodifiable set value 1b
#1bだとid指定以外で効果時間の延長や短縮が不可能になります。初期値なし
#data modify storage buff: gain.levelunmodifiable set value 1b
#1bだとid指定以外でレベルを上げたり下げて利することが不可能になります。初期値なし
#data modify storage buff: gain.unreplacable set value 1b
#1bだと上書きできなくなります。初期値なし
#data modify storage buff: gain.unremovable set value 1b
#1bだとID指定のバフの終了以外でバフの効果が終了しなくなります。
data modify storage buff: gain.isbuff set value 0b
#1bならバフ 0bならデバフ よくわからんなら-1b(????)にしといてください。初期値-1b
data modify storage buff: gain.invisible set value 0b
#1bだとアイコンが表示されなくなります。初期値0b
#data modify storage buff: gain.name set value '["text":"namae"]'
#名前。バフ欄に表示するときの名前です。なかった場合はidが入ります。
#data modify storage buff: gain.description set value [{"text":"setumei"}]
#説明。初期値なし




