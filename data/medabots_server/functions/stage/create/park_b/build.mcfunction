scoreboard players set @s NeededPlayers 0
tag @s add stage_builder
scoreboard players set @s Stage 20
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 30
fill -1857 50 -730 -1764 44 -637 minecraft:barrier replace minecraft:air
execute positioned 47 53 78 run function medabots_server:set_blocks/goal_area
execute positioned 46 53 52 run function medabots_server:set_blocks/starting_area
teleport @s 46 53 52 0 0