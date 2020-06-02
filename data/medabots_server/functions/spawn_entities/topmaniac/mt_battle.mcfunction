function medabots_server:spawn_entities/topmaniac
tag @e[distance=..0.7,tag=topmaniac] add mt_battle
data merge entity @e[distance=..0.7,tag=topmaniac,limit=1] {AbsorptionAmount:1500.0f}