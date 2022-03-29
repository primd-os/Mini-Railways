forceload add -21 -18 21 18
# Load structure twice to make sure rails load correctly
setblock 0 0 0 minecraft:structure_block[mode=load]{ignoreEntities:1b,mode:"LOAD",name:"minirailways:mini_railways_lobby",posX:-21,posY:0,posZ:-18,rotation:"NONE"}
setblock 0 0 1 redstone_block
kill @e[x=0,type=!player]
kill @e[x=0,type=!player]
setblock 0 0 0 minecraft:structure_block[mode=load]{ignoreEntities:0b,mode:"LOAD",name:"minirailways:mini_railways_lobby",posX:-21,posY:0,posZ:-18,rotation:"NONE"}
setblock 0 0 1 redstone_block
forceload remove -21 -18 21 18

tp @a[x=0] 0 1 0 -90 0
gamemode adventure @a[x=0]
tag @a[x=0] remove mr.player
execute as @a[x=0] run function minirailways:start/give_book
scoreboard players set GameState mr.Variables 0