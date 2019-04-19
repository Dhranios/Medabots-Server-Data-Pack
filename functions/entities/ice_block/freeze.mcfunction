function medabots_server:set_blocks/thin_ice
execute if entity @s[scores={ActionFloorNr=0..}] run scoreboard players operation @e[distance=..0.7,tag=thin_ice] ActionFloorNr = @s ActionFloorNr
tag @s add dead