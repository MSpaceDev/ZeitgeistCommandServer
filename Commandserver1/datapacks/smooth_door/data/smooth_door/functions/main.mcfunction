
# Door trigger code; changing the tags of the closest 2 door entitys when a player is close or not close to a door trigger
execute as @e[tag=smooth_door_trigger] at @s if entity @a[distance=..2.7] run tag @e[tag=smooth_door_door,limit=2,sort=nearest,distance=..2.3] remove player_far
execute as @e[tag=smooth_door_trigger] at @s if entity @a[distance=..2.7] run tag @e[tag=smooth_door_door,limit=2,sort=nearest,distance=..2.3] add player_close
execute as @e[tag=smooth_door_trigger] at @s unless entity @a[distance=..2.7] run tag @e[tag=smooth_door_door,limit=2,sort=nearest,distance=..2.3] add player_far
execute as @e[tag=smooth_door_trigger] at @s unless entity @a[distance=..2.7] run tag @e[tag=smooth_door_door,limit=2,sort=nearest,distance=..2.3] remove player_close

# Move doors when triggered by close door trigger
execute as @e[tag=smooth_door_door,tag=x+,tag=player_close] at @s if score @s door_point < #10 constands run tp @s ~0.1 ~ ~
execute as @e[tag=smooth_door_door,tag=x+,tag=player_far] at @s if score @s door_point > #0 constands run tp @s ~-0.1 ~ ~

execute as @e[tag=smooth_door_door,tag=x-,tag=player_close] at @s if score @s door_point < #10 constands run tp @s ~-0.1 ~ ~
execute as @e[tag=smooth_door_door,tag=x-,tag=player_far] at @s if score @s door_point > #0 constands run tp @s ~0.1 ~ ~

execute as @e[tag=smooth_door_door,tag=z+,tag=player_close] at @s if score @s door_point < #10 constands run tp @s ~ ~ ~0.1
execute as @e[tag=smooth_door_door,tag=z+,tag=player_far] at @s if score @s door_point > #0 constands run tp @s ~ ~ ~-0.1

execute as @e[tag=smooth_door_door,tag=z-,tag=player_close] at @s if score @s door_point < #10 constands run tp @s ~ ~ ~-0.1
execute as @e[tag=smooth_door_door,tag=z-,tag=player_far] at @s if score @s door_point > #0 constands run tp @s ~ ~ ~0.1

# Keep track of where the doors are with a scoreboard
execute as @e[tag=smooth_door_door,tag=player_close] at @s if score @s door_point < #10 constands run scoreboard players add @s door_point 1
execute as @e[tag=smooth_door_door,tag=player_far] at @s if score @s door_point > #0 constands run scoreboard players remove @s door_point 1


# Give all doors an initial score
scoreboard players add @e[tag=smooth_door_door] door_point 0
