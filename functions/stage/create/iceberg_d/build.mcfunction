scoreboard players set @s Battle 4
scoreboard players set @s Stage 33
scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
tag @s add custom
execute positioned -1679 44 -785 run function medabots_server:set_blocks/goal_area
execute positioned -1725 44 -755 run function medabots_server:set_blocks/starting_area
teleport @s -1725 44 -755 0 0