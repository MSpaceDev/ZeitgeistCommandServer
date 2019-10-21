# Moves player back to og position as /execute as @all_target_players_at music_location run function sound_engine:move_back
execute at @e[tag=music_pos] if score @s music_pos_id = @e[limit=1,sort=nearest] music_pos_id run tp @s ~ ~ ~ 
execute at @s run kill @e[limit=1,sort=nearest,tag=music_pos]
