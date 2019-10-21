# Spawn elevator doors
execute at @s align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["smooth_door_door","x+","smooth_door"],ArmorItems:[{},{},{},{id:"minecraft:diamond_sword",Count:1b}]}
execute at @s align xyz positioned ~-.5 ~ ~.565 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["smooth_door_door","x-","smooth_door"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b}]}

# spawn the door trigger
execute at @s align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["smooth_door_trigger","smooth_door"]}
