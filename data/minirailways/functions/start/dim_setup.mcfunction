forceload add -100 -100 100 100
kill @e[x=0,type=!player,type=!marker]
kill @e[x=0,type=!player,type=!marker]
give @a[x=0] netherite_pickaxe{CanDestroy:["#minirailways:destroy"],Unbreakable:1b,HideFlags:24}
give @a[x=0] rail{CanPlaceOn:["#minirailways:place_on"],CanDestroy:["#minirailways:destroy"],HideFlags:24} 32
give @a[x=0] powered_rail{CanPlaceOn:["#minirailways:place_on"],CanDestroy:["#minirailways:destroy"],HideFlags:24} 8
give @a[x=0] gray_concrete{CanPlaceOn:["#minirailways:place_on"],CanDestroy:["#minirailways:destroy"],HideFlags:24} 8
give @a[x=0] redstone_torch{CanPlaceOn:["#minirailways:place_on"],CanDestroy:["#minirailways:destroy"],HideFlags:24} 16
give @a[x=0] hopper_minecart{CanPlaceOn:["#minirailways:place_on"],CanDestroy:["#minirailways:destroy"],HideFlags:24} 4

tp @a[x=0] 0 17 0
execute as @a[x=0] positioned 0 15 0 run function hub:main/death/spawnpoint

gamemode adventure @a[x=0,tag=mr.player]
gamemode spectator @a[x=0,tag=!mr.player]

summon villager 0 5 0 {VillagerData:{profession:"toolsmith",level:5,type:"plains"},Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,NoGravity:1b,CustomName:'{"text":"Trade Station"}',Offers:{Recipes:[{buy:{id:"emerald",Count:1},sell:{id:"gray_concrete",Count:1,tag:{CanPlaceOn:["#minirailways:place_on"],CanDestroy:["#minirailways:destroy"],HideFlags:24}},rewardExp:0b,maxUses:9999999},{buy:{id:"emerald",Count:1},sell:{id:"powered_rail",Count:2,tag:{CanPlaceOn:["#minirailways:place_on"],CanDestroy:["#minirailways:destroy"],HideFlags:24}},rewardExp:0b,maxUses:9999999},{buy:{id:"emerald",Count:1},sell:{id:"redstone_torch",Count:1,tag:{CanPlaceOn:["#minirailways:place_on"],CanDestroy:["#minirailways:destroy"],HideFlags:24}},rewardExp:0b,maxUses:9999999},{buy:{id:"emerald",Count:1},sell:{id:"rail",Count:4,tag:{CanPlaceOn:["#minirailways:place_on"],CanDestroy:["#minirailways:destroy"],HideFlags:24}},rewardExp:0b,maxUses:9999999},{buy:{id:"emerald",Count:2},sell:{id:"hopper_minecart",Count:1,tag:{CanPlaceOn:["#minirailways:place_on"],CanDestroy:["#minirailways:destroy"],HideFlags:24}},rewardExp:0b,maxUses:9999999},{buy:{id:"emerald",Count:1},sell:{id:"detector_rail",Count:1,tag:{CanPlaceOn:["#minirailways:place_on"],CanDestroy:["#minirailways:destroy"],HideFlags:24}},rewardExp:0b,maxUses:9999999},{buy:{id:"emerald",Count:1},sell:{id:"redstone",Count:6,tag:{CanPlaceOn:["#minirailways:place_on"],CanDestroy:["#minirailways:destroy"],HideFlags:24}},rewardExp:0b,maxUses:9999999},{buy:{id:"emerald",Count:20},sell:{id:"potion",Count:1,tag:{CustomPotionEffects:[{Id:1,Amplifier:1,Duration:2147483647,ShowParticles:0b}],CustomPotionColor:11062507,display:{Name:'"Permanent Speed 2"'}}},rewardExp:0b,maxUses:9999999},{buy:{id:"emerald",Count:20},sell:{id:"potion",Count:1,tag:{CustomPotionEffects:[{Id:3,Amplifier:6,Duration:2147483647,ShowParticles:0b}],CustomPotionColor:16367376,display:{Name:'"Permanent Haste"'}}},rewardExp:0b,maxUses:9999999}]}}

scoreboard players set reset_cooldown mr.Variables 700
scoreboard players set time mr.Variables 0
scoreboard players set score mr.Variables 0

forceload remove all
scoreboard players set IsReloading mr.Variables 0

give @a[x=0] emerald 12
schedule function minirailways:main/slow_loop 1t replace