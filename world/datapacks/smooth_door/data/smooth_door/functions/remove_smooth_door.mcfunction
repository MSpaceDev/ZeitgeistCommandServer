execute at @s unless entity @e[tag=smooth_door,distance=..4] run tellraw @s {"text":"There are no doors close","color":"red"}
execute at @s run kill @e[tag=smooth_door,limit=3,distance=..5,sort=nearest]
