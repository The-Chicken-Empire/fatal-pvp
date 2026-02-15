#phasecheck
execute if score $phase main matches 1 run function system:phase/phase1/phase1
execute if score $phase main matches 2 run function system:phase/phase2/phase2
execute if score $phase main matches 3 run function system:phase/phase3/phase3
execute if score $phase main matches 4 run function system:phase/phase4/phase4