execute if entity @s[scores={LoadedChunks=10}] run function medabots_server:dialog/play

# Trigger areas
execute if entity @s[scores={Dialog=0},gamemode=!creative,gamemode=!spectator] run function medabots_server:dialog/trigger_area

# Require loaded chunks
scoreboard players add @s[scores={LoadedChunks=..9}] LoadedChunks 1
tag @s add loaded_chunk_triggered