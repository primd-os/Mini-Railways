scoreboard players set modulo mr.Variables 50
execute store result score Rand mr.Variables run data get entity @s UUID[0] 
scoreboard players operation Rand mr.Variables %= modulo mr.Variables
scoreboard players remove Rand mr.Variables 25
execute store result entity @s Pos[0] double 1 run scoreboard players get Rand mr.Variables

scoreboard players set modulo mr.Variables 50
execute store result score Rand mr.Variables run data get entity @s UUID[2] 
scoreboard players operation Rand mr.Variables %= modulo mr.Variables
scoreboard players remove Rand mr.Variables 25
execute store result entity @s Pos[2] double 1 run scoreboard players get Rand mr.Variables
