scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 10
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
execute positioned -1558 45 -397 run function medabots_server:set_blocks/goal_area
execute positioned -1538 45 -326 run function medabots_server:set_blocks/starting_area
teleport @s -1538 45 -326 0 0