execute in minirailways:game run summon minecraft:marker 0 0 -111 {Tags: ["mr.clearMap"]}
execute in minirailways:game run scoreboard players set @e[type=marker,tag=mr.clearMap,x=0] mr.clearZ -111
execute in minirailways:game run scoreboard players set IsReloading mr.Variables 1
execute in minirailways:game run scoreboard players set endgame mr.Variables 0
execute in minirailways:game run gamemode spectator @a[x=0]
execute in minirailways:game run effect clear @a[x=0]
execute in minirailways:game run kill @e[type=marker,tag=mr.Spawner]
