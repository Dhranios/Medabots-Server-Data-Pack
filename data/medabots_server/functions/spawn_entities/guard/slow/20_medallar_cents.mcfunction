function medabots_server:spawn_entities/guard/slow
data merge entity @e[distance=..0.7,tag=guard,tag=!pot,tag=!action_floor,limit=1] {DeathLootTable:"medabots_server:entities/guard/20_medallar_cents"}