execute positioned 32 53 62 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned 30 53 45 run function medabots_server:set_blocks/door/x/power_0
execute positioned 42 53 41 run function medabots_server:set_blocks/door/x/power_0
execute positioned 42 53 42 run function medabots_server:set_blocks/door/x/power_0
execute positioned 45 53 32 run function medabots_server:set_blocks/door/z/power_1
execute positioned 46 53 32 run function medabots_server:set_blocks/door/z/power_0
execute positioned 41 53 20 run function medabots_server:set_blocks/door/z/power_1
execute positioned 42 53 20 run function medabots_server:set_blocks/door/z/power_0
execute positioned 32 53 18 run function medabots_server:set_blocks/door/x/power_1
execute positioned 32 53 17 run function medabots_server:set_blocks/door/x/power_0
execute positioned 20 53 22 run function medabots_server:set_blocks/door/x/power_1
execute positioned 20 53 21 run function medabots_server:set_blocks/door/x/power_0
execute positioned 18 53 30 run function medabots_server:set_blocks/door/z/power_1
execute positioned 17 53 30 run function medabots_server:set_blocks/door/z/power_0
execute positioned 22 53 42 run function medabots_server:set_blocks/door/z/power_1
execute positioned 22 53 42 run tag @e[distance=..0.7,tag=door] add robattle
execute positioned 21 53 42 run function medabots_server:set_blocks/door/z/power_0
execute positioned 31 53 55 run function medabots_server:set_blocks/starting_area
teleport @s 31 53 55 0 0
bossbar set medabots_server:boxer/time value 0
bossbar set medabots_server:boxer/time players @s
scoreboard players set @s State 1
scoreboard players set @a[scores={Gamemode=0,Stage=29}] Stage 29
execute as @a[scores={Gamemode=0,Stage=29}] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[scores={Gamemode=0,Stage=29}] MusicType 21