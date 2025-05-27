#※必須がなかった場合はエラーを吐かせます


data modify storage buff: gain.id set value 0
#idです。他の人と被らないようにしろ。※>>>必須<<<
data modify storage buff: gain.level set value 1
#バフのレベルです。付与されるときにこのレベルがついてます。初期値1
#よりレベルの高い同じバフがついていた場合は更新されません。
data modify storage buff: gain.maxlevel set value 1
#バフの最大レベルです。初期値1
data modify storage buff: gain.duration set value 100
#効果時間です 1秒は20です。-1なら永続です。初期値-1
data modify storage buff: gain.byplayerdata set value 0
#バフをかけたプレイヤーのplayerdataのスコアを突っ込んでください。初期値なし
data modify storage buff: gain.buffcontent set value "maxhp"
#バフにステータス上昇効果がある場合はここに突っ込んでください。
#最大体力:maxhp 最大mp:maxmp マナリゲネ:mr 物理耐性:phyisicaldef 魔法耐性:magicdef
#近接耐性:meleedef 遠隔耐性:rangedef 回復量:vit 移動速度:speed
#物理ダメ増:phyisicaldmg 魔法ダメ増:magicdmg 近接ダメ増:meleedmg 遠隔ダメ増:rangedmg
#回心率:cc 回避力:agi 充電最大値:maxeng
#初期値なし
data modify storage buff: gain.buffvalue set value "10"
#buffcontentで設定したステータスの上昇量です。負の値にしたら下がります。初期値なし
data modify storage buff: gain.buffvalueperlevel set value "10"
#レベルごとのbuffcontentで設定したステータスの上昇量です。負の値にしたら下がります。初期値なし
data modify storage buff: gain.functiontick set value "aaa:aaa/aaa"
#バフが付与されている間毎ティック実行するファンクションです。初期値なし
data modify storage buff: gain.functionwhenexpired set value "aaa:aaa/aaa"
#バフの効果が着れたときに実行するファンクションです。初期値なし
data modify storage buff: gain.customdata set value []
#格納したいデータがあったら格納しといてください。
#バフ終了時のファンクションではには、buff: customdataに格納されています。初期値なし
data modify storage buff: gain.durationunmodifiable set value 0b
#1bだとパークの効果とかで効果時間の延長や短縮が不可能になります。初期値0b
data modify storage buff: gain.levelunmodifiable set value 0b
#1bだとパークの効果とかでレベルを上げたり下げて利することが不可能になります。初期値0b
data modify storage buff: gain.unreplacable set value 0b
#1bだと上書きできなくなります。初期値0b
data modify storage buff: gain.isbuff set value 1b
#1bならバフ 0bならデバフ よくわからんなら-1b(????)にしといてください。初期値-1b
data modify storage buff: gain.invisible set value 1b
#1bだとアイコンが表示されなくなります。初期値0b
data modify storage buff: gain.icon set value 11
#アイコンの番号です。設定してなかった場合はidと同じ値が入ります。
data modify storage buff: gain.name set value '["text":"namae"]'
#名前。初期値なし
data modify storage buff: gain.discription set value ['[{"text":"setumei"}]']
#説明。初期値なし

function buff:gain/
#バフを付与します。




function buff:modify/
#バフの効果内容に変更を加えます。


function buff:check/ {id:1}
#idで指定したバフを持っているかチェックします。
