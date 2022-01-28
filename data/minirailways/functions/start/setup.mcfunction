scoreboard objectives add mr.clearZ dummy
scoreboard objectives add mr.Variables dummy
scoreboard objectives add mr.Cooldown dummy
execute in minirailways:game run function minirailways:start/dim_setup
function minirailways:main/slow_loop
function minirailways:main/item_loop

team add mr.Team
team modify mr.Team prefix {"text": "Mini Railways | "}
team modify mr.Team collisionRule always
team modify mr.Team friendlyFire false

schedule function minirailways:start/main 1t replace