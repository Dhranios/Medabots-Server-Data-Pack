function medabots_server:spawn_entities/crazy_hand
tag @e[distance=..0.7,tag=crazy_hand] add mt_battle
data merge entity @e[distance=..0.7,tag=crazy_hand,limit=1] {AbsorptionAmount:500.0f}