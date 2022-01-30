execute if score IsReloading mr.Variables matches 0 in minirailways:game as @a[x=0,tag=mr.player] run function minirailways:start/add_pair
execute if score IsReloading mr.Variables matches 0 in minirailways:game run give @a[x=0,tag=mr.player] emerald 12
execute if score IsReloading mr.Variables matches 0 in minirailways:game as @a[x=0] at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 0 1
execute if score GameDifficulty mr.Variables matches 0 run schedule function minirailways:main/slow_loop 85s
execute if score GameDifficulty mr.Variables matches 1 run schedule function minirailways:main/slow_loop 55s