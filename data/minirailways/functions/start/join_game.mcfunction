execute in minirailways:game if score GameState mr.Variables matches 1 unless entity @a[x=0] run function minirailways:start/reset_map
execute in minirailways:game if score GameState mr.Variables matches 0 run tp @s 0 1 0
execute in minirailways:game unless score GameState mr.Variables matches 0 run tp @s 0 17 0
execute in minirailways:game positioned 0 15 0 run function hub:main/death/spawnpoint
execute in minirailways:game if score GameState mr.Variables matches 0 run gamemode adventure
execute in minirailways:game unless score GameState mr.Variables matches 0 run gamemode spectator

execute if score GameState mr.Variables matches 0 run function minirailways:start/give_book
team join mr.Team @s