# Spawn elevator doors
execute at @s align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Rotation:[90F,0F],NoGravity:1b,Invisible:1b,Tags:["smooth_door_door","z-","smooth_door"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b}]}
execute at @s align xyz positioned ~.5 ~ ~1.5 run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Rotation:[90F,0F],NoGravity:1b,Invisible:1b,Tags:["smooth_door_door","z+","smooth_door"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b}]}

# spawn the door trigger
execute at @s align xyz positioned ~.5 ~ ~.5 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["smooth_door_trigger","smooth_door"]}
