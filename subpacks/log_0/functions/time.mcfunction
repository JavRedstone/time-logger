scoreboard objectives add ticks dummy
scoreboard objectives add events dummy

scoreboard players set timer ticks 0
scoreboard players operation * events = timer ticks

execute if score log events matches 0 run scoreboard players set minutes ticks 0
execute if score log events matches 0 run scoreboard players set hours ticks 0
execute if score log events matches 0 run scoreboard players set days ticks 0

execute if score log events matches 0 run scoreboard players set hoursg ticks 0
execute if score log events matches 0 run scoreboard players set daysg ticks 0

tellraw @a {"rawtext":[{"text":"§6§lIRL: §r§d"}, {"score":{"name": "days", "objective": "ticks"}}, {"text" :"d §r§a"}, {"score":{"name": "hours","objective": "ticks"}}, {"text" : "h §r§b"}, {"score":{"name": "minutes", "objective": "ticks"}}, {"text" : "m §r- "}, {"text" : "§i§lMC: §r§d"}, {"score":{"name": "daysg","objective": "ticks"}}, {"text" :"d §r§a"}, {"score":{"name": "hoursg","objective": "ticks"}}, {"text" : "h §r§b"}]}