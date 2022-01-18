fill 113 0 ~ -113 0 ~ white_concrete
fill 113 1 ~ -113 15 ~ air
fill 113 1 ~-1 -113 15 ~-1 air
tp ~ ~ ~1
scoreboard players add @s mr.clearZ 1
execute as @s[scores={mr.clearZ=112..}] run function minirailways:start/dim_setup
execute as @s[scores={mr.clearZ=112..}] run kill @s
