effect clear @a[tag=cp.owner] darkness
execute as @a[tag=cp.owner] run function effects:system/modify/ {id:23,level:-999,duration:0}
tag @a[tag=cp.owner] remove cp.owner
execute on passengers run kill
kill