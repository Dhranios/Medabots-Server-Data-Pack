execute if entity @s[tag=loaded_chunk_10] run function medabots_server:dialog/play

# Trigger areas
execute if entity @s[scores={Dialog=0},gamemode=!creative,gamemode=!spectator] run function medabots_server:dialog/trigger_area

# Require loaded chunks
tag @s[tag=!loaded_chunk_10,tag=loaded_chunk_9] add loaded_chunk_10
tag @s[tag=!loaded_chunk_9,tag=loaded_chunk_8] add loaded_chunk_9
tag @s[tag=!loaded_chunk_8,tag=loaded_chunk_7] add loaded_chunk_8
tag @s[tag=!loaded_chunk_7,tag=loaded_chunk_6] add loaded_chunk_7
tag @s[tag=!loaded_chunk_6,tag=loaded_chunk_5] add loaded_chunk_6
tag @s[tag=!loaded_chunk_5,tag=loaded_chunk_4] add loaded_chunk_5
tag @s[tag=!loaded_chunk_4,tag=loaded_chunk_3] add loaded_chunk_4
tag @s[tag=!loaded_chunk_3,tag=loaded_chunk_2] add loaded_chunk_3
tag @s[tag=!loaded_chunk_2,tag=loaded_chunk_1] add loaded_chunk_2
tag @s[tag=!loaded_chunk_1] add loaded_chunk_1
tag @s add loaded_chunk_triggered