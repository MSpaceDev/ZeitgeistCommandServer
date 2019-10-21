# Gets called on every /reload or opening of a world

tellraw @a {"text":"Smooth doors Reloaded!","color":"green"}
scoreboard objectives add door_point dummy
scoreboard objectives add constands dummy
scoreboard players set #10 constands 10
scoreboard players set #1 constands 1
