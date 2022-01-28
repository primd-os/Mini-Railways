execute as @e[type=marker,x=0,tag=mr.clearMap] at @s run function minirailways:start/slow_clear_map_loop
execute as @e[type=item,x=0,tag=!mr.Processed] run kill @s[nbt={Item:{id: "minecraft:blue_concrete"}}]
execute as @e[type=item,x=0,tag=!mr.Processed] run kill @s[nbt={Item:{id: "minecraft:green_concrete"}}]
execute as @e[type=item,x=0,tag=!mr.Processed] run kill @s[nbt={Item:{id: "minecraft:red_concrete"}}]
execute as @e[type=item,x=0,tag=!mr.Processed] run kill @s[nbt={Item:{id: "minecraft:magenta_concrete"}}]
execute as @e[type=item,x=0,tag=!mr.Processed] run kill @s[nbt={Item:{id: "minecraft:brown_concrete"}}]
execute as @e[type=item,x=0,tag=!mr.Processed] run kill @s[nbt={Item:{id: "minecraft:minecart"}}]
execute as @e[type=item,x=0,tag=!mr.Processed] run kill @s[nbt={Item:{id: "minecraft:written_book"}}]
execute as @e[type=item,x=0,tag=!mr.Processed] run tag @s[nbt={Item:{id: "minecraft:netherite_pickaxe"}}] add mr.Processed
execute as @e[type=item,x=0,tag=!mr.Processed] run tag @s[nbt={Item:{id: "minecraft:emerald"}}] add mr.Processed
execute as @e[type=item,x=0,tag=!mr.Processed] run data modify entity @s Item.tag.CanPlaceOn set value ["#minirailways:place_on"]
execute as @e[type=item,x=0,tag=!mr.Processed] run data modify entity @s Item.tag.CanDestroy set value ["#minirailways:destroy"]
execute as @e[type=item,x=0,tag=!mr.Processed] run data modify entity @s Item.tag.HideFlags set value 24
execute as @e[type=item,x=0,tag=!mr.Processed] run data modify entity @s[nbt={Item:{id: "minecraft:hopper"}}] Item.id set value "minecraft:hopper_minecart"
tag @e[type=item,x=0] add mr.Processed

execute as @e[type=marker,x=0,tag=mr.new] at @s positioned ~0.5 ~2 ~0.5 run particle dust 0 0 1 1.0 ~ ~ ~ 0 10 0 1 4 force
execute if score endgame mr.Variables matches 0 run scoreboard players remove @e[type=marker,x=0,tag=mr.Destination] mr.Cooldown 1
execute as @e[type=marker,x=0,tag=mr.Destination,scores={mr.Cooldown=-180..0}] at @s positioned ~0.5 ~2 ~0.5 run particle dust 0.0 1.0 0.0 1.0 ~ ~ ~ 0 10 0 1 4 force
execute as @e[type=marker,x=0,tag=mr.Destination,scores={mr.Cooldown=-180}] at @s positioned ~0.5 ~2 ~0.5 run playsound block.glass.break master @a[x=0]
execute as @e[type=marker,x=0,tag=mr.Destination,scores={mr.Cooldown=-360..-180}] at @s positioned ~0.5 ~2 ~0.5 run particle dust 0.984 1 0 1.0 ~ ~ ~ 0 10 0 1 4 force
execute as @e[type=marker,x=0,tag=mr.Destination,scores={mr.Cooldown=-360}] at @s positioned ~0.5 ~2 ~0.5 run playsound block.glass.break master @a[x=0]
execute as @e[type=marker,x=0,tag=mr.Destination,scores={mr.Cooldown=-362}] at @s positioned ~0.5 ~2 ~0.5 run playsound block.glass.break master @a[x=0]
execute as @e[type=marker,x=0,tag=mr.Destination,scores={mr.Cooldown=..-360}] at @s positioned ~0.5 ~2 ~0.5 run particle dust 1 0 0 1.0 ~ ~ ~ 0 10 0 1 4 force
execute as @e[type=marker,x=0,tag=mr.Destination,scores={mr.Cooldown=..-600}] if score endgame mr.Variables matches 0 run tellraw @a[x=0] [{"text": "Score: ","bold": true},{"score":{"name":"score","objective":"mr.Variables"}}]
execute as @e[type=marker,x=0,tag=mr.Destination,scores={mr.Cooldown=..-600}] if score endgame mr.Variables matches 0 run gamemode spectator @a[x=0]
execute as @e[type=marker,x=0,tag=mr.Destination,scores={mr.Cooldown=..-600}] if score endgame mr.Variables matches 0 run schedule function minirailways:start/reset_map 10s replace
execute as @e[type=marker,x=0,tag=mr.Destination,scores={mr.Cooldown=..-600}] if score endgame mr.Variables matches 0 run scoreboard players set endgame mr.Variables 1

effect give @a[x=0] saturation 2 2 true
effect give @a[x=0] resistance 2 4 true
scoreboard players add score mr.Variables 1