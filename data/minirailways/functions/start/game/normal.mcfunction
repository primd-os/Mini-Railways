tag @a[x=0] add mr.player
scoreboard players set GameDifficulty mr.Variables 1
scoreboard players set GameState mr.Variables 1
fill -21 0 -18 21 0 18 white_concrete
fill -21 1 -18 21 15 18 air
kill @e[x=0,type=!player]
kill @e[x=0,type=!player]
function minirailways:start/dim_setup
function minirailways:main/item_loop
function minirailways:main/source_loop
function minirailways:main/slow_loop