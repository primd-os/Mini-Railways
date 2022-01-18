execute if score Rand mr.Variables matches 0 run tag @s add mr.Blue
execute if score Rand mr.Variables matches 1 run tag @s add mr.Green
execute if score Rand mr.Variables matches 2 run tag @s add mr.Red
execute if score Rand mr.Variables matches 3 run tag @s add mr.Magenta
execute if score Rand mr.Variables matches 4 run tag @s add mr.Brown

execute if score Rand mr.Variables matches 0 as @s[tag=mr.Source] run setblock ~ 2 ~ blue_shulker_box{Lock:"$"}
execute if score Rand mr.Variables matches 0 as @s[tag=mr.Source] run setblock ~ 3 ~ blue_concrete
execute if score Rand mr.Variables matches 1 as @s[tag=mr.Source] run setblock ~ 2 ~ green_shulker_box{Lock:"$"}
execute if score Rand mr.Variables matches 1 as @s[tag=mr.Source] run setblock ~ 3 ~ green_concrete
execute if score Rand mr.Variables matches 2 as @s[tag=mr.Source] run setblock ~ 2 ~ red_shulker_box{Lock:"$"}
execute if score Rand mr.Variables matches 2 as @s[tag=mr.Source] run setblock ~ 3 ~ red_concrete
execute if score Rand mr.Variables matches 3 as @s[tag=mr.Source] run setblock ~ 2 ~ magenta_shulker_box{Lock:"$"}
execute if score Rand mr.Variables matches 3 as @s[tag=mr.Source] run setblock ~ 3 ~ magenta_concrete
execute if score Rand mr.Variables matches 4 as @s[tag=mr.Source] run setblock ~ 2 ~ brown_shulker_box{Lock:"$"}
execute if score Rand mr.Variables matches 4 as @s[tag=mr.Source] run setblock ~ 3 ~ brown_concrete
execute as @s[tag=mr.Destination] run setblock ~ 1 ~ hopper{Lock:"$",Items:[{id:"minecraft:barrier",Count:1b,Slot:0b},{id:"minecraft:barrier",Count:64b,Slot:1b},{id:"minecraft:barrier",Count:64b,Slot:2b},{id:"minecraft:barrier",Count:64b,Slot:3b},{id:"minecraft:barrier",Count:64b,Slot:4b}]}
execute if score Rand mr.Variables matches 0 as @s[tag=mr.Destination] run fill ~-1 0 ~ ~1 0 ~ blue_concrete
execute if score Rand mr.Variables matches 0 as @s[tag=mr.Destination] run setblock ~ 0 ~-1 blue_concrete
execute if score Rand mr.Variables matches 0 as @s[tag=mr.Destination] run setblock ~ 0 ~1 blue_concrete
execute if score Rand mr.Variables matches 1 as @s[tag=mr.Destination] run fill ~-1 0 ~ ~1 0 ~ green_concrete
execute if score Rand mr.Variables matches 1 as @s[tag=mr.Destination] run setblock ~ 0 ~-1 green_concrete
execute if score Rand mr.Variables matches 1 as @s[tag=mr.Destination] run setblock ~ 0 ~1 green_concrete
execute if score Rand mr.Variables matches 2 as @s[tag=mr.Destination] run fill ~-1 0 ~ ~1 0 ~ red_concrete
execute if score Rand mr.Variables matches 2 as @s[tag=mr.Destination] run setblock ~ 0 ~-1 red_concrete
execute if score Rand mr.Variables matches 2 as @s[tag=mr.Destination] run setblock ~ 0 ~1 red_concrete
execute if score Rand mr.Variables matches 3 as @s[tag=mr.Destination] run fill ~-1 0 ~ ~1 0 ~ magenta_concrete
execute if score Rand mr.Variables matches 3 as @s[tag=mr.Destination] run setblock ~ 0 ~-1 magenta_concrete
execute if score Rand mr.Variables matches 3 as @s[tag=mr.Destination] run setblock ~ 0 ~1 magenta_concrete
execute if score Rand mr.Variables matches 4 as @s[tag=mr.Destination] run fill ~-1 0 ~ ~1 0 ~ brown_concrete
execute if score Rand mr.Variables matches 4 as @s[tag=mr.Destination] run setblock ~ 0 ~-1 brown_concrete
execute if score Rand mr.Variables matches 4 as @s[tag=mr.Destination] run setblock ~ 0 ~1 brown_concrete

tag @s add mr.Generated