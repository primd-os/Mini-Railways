summon marker 0 0 0 {Tags:["mr.Spawner", "mr.new", "mr.Source"]}
summon marker 0 0 0 {Tags:["mr.Spawner", "mr.new", "mr.Destination"]}

execute as @e[type=marker,x=0,tag=mr.Spawner,tag=!mr.Generated] run tag @s add mr.ToRemove

function minirailways:start/adjust_locations
function minirailways:start/adjust_locations
function minirailways:start/adjust_locations
function minirailways:start/adjust_locations
function minirailways:start/adjust_locations
function minirailways:start/adjust_locations
function minirailways:start/adjust_locations
function minirailways:start/adjust_locations
function minirailways:start/adjust_locations
function minirailways:start/adjust_locations

execute unless entity @e[type=marker,x=0,tag=mr.Spawner,tag=mr.ToRemove] run give @s emerald 12
execute unless entity @e[type=marker,x=0,tag=mr.Spawner,tag=mr.ToRemove] at @s run playsound block.note_block.bell master @s ~ ~ ~ 1 0 1
execute unless entity @e[type=marker,x=0,tag=mr.Spawner,tag=mr.ToRemove] run title @s actionbar {"text":"New Spawn!","color": "red"}
execute if entity @e[type=marker,x=0,tag=mr.Spawner,tag=mr.ToRemove] if score reset_cooldown mr.Variables matches 100.. run scoreboard players remove reset_cooldown mr.Variables 6
execute if entity @e[type=marker,x=0,tag=mr.Spawner,tag=mr.ToRemove] run kill @e[type=marker,x=0,tag=mr.Spawner,tag=!mr.Generated]

scoreboard players set modulo mr.Variables 5
execute store result score Rand mr.Variables run data get entity @e[type=marker,x=0,tag=mr.Spawner,tag=!mr.Generated,tag=mr.Destination,limit=1] UUID[1] 
scoreboard players operation Rand mr.Variables %= modulo mr.Variables

execute if score GameDifficulty mr.Variables matches -1 as @e[type=marker,x=0,tag=mr.Spawner,tag=!mr.Generated,tag=mr.Destination] run scoreboard players set @s mr.Cooldown 4000
execute if score GameDifficulty mr.Variables matches 0 as @e[type=marker,x=0,tag=mr.Spawner,tag=!mr.Generated,tag=mr.Destination] run scoreboard players set @s mr.Cooldown 2700
execute if score GameDifficulty mr.Variables matches 1 as @e[type=marker,x=0,tag=mr.Spawner,tag=!mr.Generated,tag=mr.Destination] run scoreboard players set @s mr.Cooldown 1800
execute as @e[type=marker,x=0,tag=mr.Spawner,tag=!mr.Generated] at @s run function minirailways:start/generate_poi