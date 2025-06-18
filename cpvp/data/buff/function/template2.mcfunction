#function buff:modify/
#バフの効果内容に変更を加えます。



data modify storage buff: modify.level set value 2
#数字分だけレベルが上がる。マイナスなら減る。
data modify storage buff: modify.duration set value 100000
#数字分だけ効果時間が延びる。マイナスなら減る。

#function buff:modify/all <-全部のエフェクトに効果がある。基本使わないでくだしあ
#function buff:modify/buff <-全部の"バフ"に効果がある。
#function buff:modify/debuff <-全部の"デバフ"に効果がある。
#function buff:modify/id {id:ここにidをいれる} <-指定したidのやつに効果がある。ちなみにこれはバフの効果編集無効を貫通する。

#バフの終了処理
#function buff:end/all <-全部のエフェクトを終了する。基本使わないでくだしあ
#function buff:end/buff <-全部の"バフ"を終了する。
#function buff:end/debuff <-全部の"デバフ"を終了する。
#function buff:end/id {id:ここにidをいれる} <-指定したidのやつに効果がある。ちなみにこれはバフの終了無効を貫通する。