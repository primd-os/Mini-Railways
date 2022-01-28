execute in minirailways:game run tag @e[x=0] remove mr.new
execute if score IsReloading mr.Variables matches 0 in minirailways:game as @a[x=0] run function minirailways:start/add_pair
execute if score IsReloading mr.Variables matches 0 in minirailways:game run give @a[x=0] emerald 12
execute if score IsReloading mr.Variables matches 0 in minirailways:game as @a[x=0] at @s run playsound block.amethyst_block.fall master @s ~ ~ ~ 1 2 1
schedule function minirailways:main/slow_loop 55s