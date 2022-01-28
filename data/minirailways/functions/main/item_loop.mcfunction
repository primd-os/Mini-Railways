execute in minirailways:game as @e[type=marker,x=0,tag=mr.Source] at @s run loot insert ~ 2 ~ mine ~ 3 ~
execute in minirailways:game as @e[type=marker,x=0,tag=mr.Destination] at @s run function minirailways:main/cooldown_resets

execute if score reset_cooldown mr.Variables matches 475.. run scoreboard players remove reset_cooldown mr.Variables 1

schedule function minirailways:main/item_loop 1s replace