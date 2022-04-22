scoreboard objectives add mr.clearZ dummy
scoreboard objectives add mr.Variables dummy
scoreboard objectives add mr.Cooldown dummy

team add mr.Team
team modify mr.Team prefix {"text": "Mini Railways | "}
team modify mr.Team collisionRule always
team modify mr.Team friendlyFire false

execute in minirailways:game run function minirailways:start/place_lobby

schedule function minirailways:main/main 1t replace