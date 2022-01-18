execute as @e[type=marker,x=0,tag=mr.Spawner,tag=mr.ToRemove] at @s run function minirailways:start/randomize_position
execute as @e[type=marker,x=0,tag=mr.Source,tag=mr.ToRemove] at @s unless entity @e[type=marker,tag=mr.Spawner,distance=0.01..3] if entity @e[type=marker,tag=mr.Destination,tag=!mr.Generated,distance=..35] if block ~ 1 ~ air if block ~ 2 ~ air if block ~ 3 ~ air run tag @s remove mr.ToRemove
execute as @e[type=marker,x=0,tag=mr.Destination,tag=mr.ToRemove] at @s unless entity @e[type=marker,tag=mr.Spawner,distance=0.01..3] if block ~ 1 ~ air if block ~ 2 ~ air if block ~ 3 ~ air run tag @s remove mr.ToRemove
execute as @e[type=marker,x=0,tag=mr.ToRemove,tag=mr.Source] at @s run summon marker ~ ~ ~ {Tags:["mr.ToRemove","mr.Source"]}
execute as @e[type=marker,x=0,tag=mr.ToRemove,tag=mr.Destination] at @s run summon marker ~ ~ ~ {Tags:["mr.ToRemove","mr.Destination"]}
kill @e[type=marker,x=0,tag=mr.Spawner,tag=mr.ToRemove]
tag @e[type=marker,tag=mr.ToRemove] add mr.Spawner