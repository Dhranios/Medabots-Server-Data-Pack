function medabots_server:spawn_entities/crazy_hand
tag @e[distance=..0.7,tag=crazy_hand] add smash_melee
tag @e[distance=..0.7,tag=crazy_hand_model] add smash_melee
data merge entity @e[distance=..0.7,tag=crazy_hand,limit=1] {AbsorptionAmount:360.0f}