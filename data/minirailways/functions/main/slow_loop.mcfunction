execute if score GameState mr.Variables matches 1 in minirailways:game as @a[x=0,tag=mr.player] run function minirailways:start/add_pair

execute if score reset_cooldown mr.Variables matches 200.. run scoreboard players remove reset_cooldown mr.Variables 12

execute if score GameDifficulty mr.Variables matches -1 run schedule function minirailways:main/slow_loop 180s
execute if score GameDifficulty mr.Variables matches 0 run schedule function minirailways:main/slow_loop 90s
execute if score GameDifficulty mr.Variables matches 1 run schedule function minirailways:main/slow_loop 55s