execute if block ~ 1 ~ hopper{Items:[{Count:64b,Slot:0b}]} run scoreboard players operation @s mr.Cooldown += reset_cooldown mr.Variables
execute if block ~ 1 ~ hopper{Items:[{Count:64b,Slot:0b}]} run playsound minecraft:block.amethyst_block.hit master @a[x=0] ~ ~ ~ 0.5 2 0.2
execute if block ~ 1 ~ hopper{Items:[{Count:64b,Slot:0b}]} run scoreboard players add score mr.Variables 1
execute as @s[tag=mr.Blue] run item replace block ~ 1 ~ container.0 with minecraft:blue_concrete 63
execute as @s[tag=mr.Green] run item replace block ~ 1 ~ container.0 with minecraft:green_concrete 63
execute as @s[tag=mr.Red] run item replace block ~ 1 ~ container.0 with minecraft:red_concrete 63
execute as @s[tag=mr.Magenta] run item replace block ~ 1 ~ container.0 with minecraft:magenta_concrete 63
execute as @s[tag=mr.Brown] run item replace block ~ 1 ~ container.0 with minecraft:brown_concrete 63