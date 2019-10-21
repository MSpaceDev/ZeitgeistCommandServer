# Gets called on every /reload or opening of a world

tellraw @a {"text":"Elevator Reloaded!","color":"green"}
scoreboard objectives add lift_level dummy
scoreboard objectives add constands dummy
scoreboard players set #0 constands 0
