function medabots_server:spawn_entities/guard/medium
data merge entity @e[distance=..0.7,tag=guard,tag=!pot,tag=!action_floor,limit=1] {DeathLootTable:"medabots_server:entities/guard/1_medallar_cent"}