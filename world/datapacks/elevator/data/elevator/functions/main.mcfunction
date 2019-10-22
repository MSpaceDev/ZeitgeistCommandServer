
# Move elevator
execute as @e[tag=lift_base] at @s if score @s lift_level < #0 constands run tp @s ~ ~-0.125 ~
execute as @e[tag=lift_base] at @s if score @s lift_level > #0 constands run tp @s ~ ~0.125 ~

execute as @e[tag=lift_base] at @s if score @s lift_level > #0 constands run scoreboard players remove @s lift_level 1
execute as @e[tag=lift_base] at @s if score @s lift_level < #0 constands run scoreboard players add @s lift_level 1

# Keep elevator falling_blocks alive
execute as @e[tag=lift_block] run data merge entity @s {Time:1}

# to open lift lift_door
# /scoreboard players set @e[tag=lift_door_base] lift_level 24
# to close lift lift_door
# /scoreboard players set @e[tag=lift_door_base] lift_level -24
# to move anything
# /scoreboard players set @e[tag=lift_base] lift_level 8
# 8 is one block

# move player to next area in mine
execute as @a[x=783,y=3,z=2031,dx=2,dz=-2] at @s run tp @s ~24 ~229 ~40
