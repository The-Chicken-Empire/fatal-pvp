$execute if data storage cpvp:attackdata $(tmp).noitem run return run function system:killlog/noitem
$execute if data storage cpvp:attackdata $(tmp) run function system:killlog/ifdata with storage cpvp:attackdata $(tmp)
execute unless data storage cpvp:attackdata $(tmp) run function system:killlog/check2