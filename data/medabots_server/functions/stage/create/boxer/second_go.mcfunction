execute positioned -1889 44 -541 run function medabots_server:spawn_entities/item/10_medallar_cents
execute positioned -1890 44 -558 run function medabots_server:set_blocks/door/north/power_0
execute positioned -1879 44 -562 run function medabots_server:set_blocks/door/south/power_0
execute positioned -1878 44 -561 run function medabots_server:set_blocks/door/north/power_0
execute positioned -1876 44 -571 run function medabots_server:set_blocks/door/west/power_1
execute positioned -1875 44 -571 run function medabots_server:set_blocks/door/west/power_0
execute positioned -1880 44 -582 run function medabots_server:set_blocks/door/east/power_1
execute positioned -1879 44 -583 run function medabots_server:set_blocks/door/west/power_0
execute positioned -1889 44 -585 run function medabots_server:set_blocks/door/south/power_1
execute positioned -1889 44 -586 run function medabots_server:set_blocks/door/south/power_0
execute positioned -1900 44 -581 run function medabots_server:set_blocks/door/north/power_1
execute positioned -1901 44 -582 run function medabots_server:set_blocks/door/south/power_0
execute positioned -1903 44 -572 run function medabots_server:set_blocks/door/east/power_1
execute positioned -1904 44 -572 run function medabots_server:set_blocks/door/east/power_0
execute positioned -1899 44 -561 run function medabots_server:set_blocks/door/west/power_1
execute positioned -1900 44 -560 run function medabots_server:set_blocks/door/east/power_0
execute positioned -1890 44 -548 run function medabots_server:set_blocks/starting_area
teleport @s -1890 44 -548 0 0
bossbar set medabots_server:boxer/time value 0
bossbar set medabots_server:boxer/time players @s
scoreboard players set @s State 1
scoreboard players set @a[scores={Gamemode=0,Stage=29}] Stage 29
execute as @a[scores={Gamemode=0,Stage=29}] unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @a[scores={Gamemode=0,Stage=29}] MusicType 21