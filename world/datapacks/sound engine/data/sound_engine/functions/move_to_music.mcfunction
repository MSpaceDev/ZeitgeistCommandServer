# Moves player to music location should be used as /execute as @all_target_players at music_location run function sound_engine:move_to_music
execute if score @s music_pos_id matches 0 run function sound_engine:get_music_place_id
execute at @s run summon armor_stand ~ ~ ~ {Tags:["music_pos"]}
execute at @s run scoreboard players operation @e[tag=music_pos,type=armor_stand,limit=1,sort=nearest] music_pos_id = @s music_pos_id
tp @s ~ ~ ~
