execute in minirailways:game unless entity @a[x=0] run function minirailways:start/reset_map

execute in minirailways:game if score GameState mr.Variables matches 0 run tp @s 0 1 0
execute in minirailways:game if score GameState mr.Variables matches 0 positioned 0 1 0 run function hub:main/death/spawnpoint
execute in minirailways:game if score GameState mr.Variables matches 0 run gamemode adventure

execute in minirailways:game if score GameState mr.Variables matches 1 run tp @s 0 17 0
execute in minirailways:game if score GameState mr.Variables matches 1 positioned 0 15 0 run function hub:main/death/spawnpoint
execute in minirailways:game if score GameState mr.Variables matches 1 run gamemode spectator

execute if score GameState mr.Variables matches 0 run give @s written_book{pages:['["",{"text":" \\u0020 [","bold":true,"color":"dark_blue"},{"text":"Mini Railways","bold":true,"color":"dark_gray"},{"text":"]\\n \\u0020 \\u0020How To Play","bold":true,"color":"dark_blue"},{"text":"\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020 \\u0020 \\u0020 \\u0020 \\u0020\\nIn Mini Railways your goal is to utilize hopper minecarts to move items from a shulker source to a hopper pickup of the same color. Over time more sources and pickups will appear.\\n\\n"},{"text":"[Continue]","color":"black","clickEvent":{"action":"change_page","value":2}}]','["",{"text":" \\u0020 [","bold":true,"color":"dark_blue"},{"text":"Mini Railways","bold":true,"color":"dark_gray"},{"text":"]\\n \\u0020 \\u0020How To Play","bold":true,"color":"dark_blue"},{"text":"\\n","color":"reset"},{"text":" \\u0020 \\u0020 \\u0020 \\u0020 \\u0020 \\u0020 \\u0020\\nFor every source & pickup pair, you will receive 12 emeralds that can be traded with the villager for rails, minecarts, upgrades, and more.\\n "}]'],title:"Mini Railways How To Play",author:"PRIMD Dev Team"}
team join mr.Team @s