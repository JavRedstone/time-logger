scoreboard objectives add ticks dummy
scoreboard objectives add events dummy

scoreboard players set 1s ticks 20
scoreboard players set 1m ticks 1200
scoreboard players set 5m ticks 6000
scoreboard players set 1h ticks 72000
scoreboard players set 1d ticks 1728000

scoreboard players set 1hg ticks 1000
scoreboard players set 1dg ticks 24000

scoreboard players add timer ticks 1

scoreboard players operation minutes events %= 1s ticks
scoreboard players operation hours events %= 1s ticks
scoreboard players operation days events %= 1s ticks
scoreboard players operation hoursg events %= 1s ticks
scoreboard players operation daysg events %= 1s ticks
scoreboard players operation log events %= 1s ticks

scoreboard players operation * events = timer ticks

scoreboard players operation minutes events %= 1m ticks
scoreboard players operation hours events %= 1h ticks
scoreboard players operation days events %= 1d ticks

scoreboard players operation hoursg events %= 1hg ticks
scoreboard players operation daysg events %= 1dg ticks

scoreboard players operation log events %= 5m ticks

execute if score log events matches 0 run scoreboard players add minutes ticks 0
execute if score log events matches 0 run scoreboard players add hours ticks 0
execute if score log events matches 0 run scoreboard players add days ticks 0

execute if score minutes events matches 0 run scoreboard players add minutes ticks 1
execute if score hours events matches 0 run scoreboard players set minutes ticks 0
execute if score hours events matches 0 run scoreboard players add hours ticks 1
execute if score days events matches 0 run scoreboard players set hours ticks 0
execute if score days events matches 0 run scoreboard players add days ticks 1

execute if score log events matches 0 run scoreboard players add hoursg ticks 0
execute if score log events matches 0 run scoreboard players add daysg ticks 0

execute if score hoursg events matches 0 run scoreboard players add hoursg ticks 1
execute if score daysg events matches 0 run scoreboard players set hoursg ticks 0
execute if score daysg events matches 0 run scoreboard players add daysg ticks 1

execute if score log events matches 0 run tellraw @a {"rawtext":[{"text":"§6§lIRL: §r§d"}, {"score":{"name": "days", "objective": "ticks"}}, {"text" :"d §r§a"}, {"score":{"name": "hours","objective": "ticks"}}, {"text" : "h §r§b"}, {"score":{"name": "minutes", "objective": "ticks"}}, {"text" : "m §r- "}, {"text" : "§i§lMC: §r§d"}, {"score":{"name": "daysg","objective": "ticks"}}, {"text" :"d §r§a"}, {"score":{"name": "hoursg","objective": "ticks"}}, {"text" : "h §r§b"}]}