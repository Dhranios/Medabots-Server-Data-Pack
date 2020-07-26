function medabots_server:spawn_entities/master_hand
tag @e[distance=..0.7,tag=master_hand] add smash_brawl
tag @e[distance=..0.7,tag=master_hand_model] add smash_brawl
data merge entity @e[distance=..0.7,tag=master_hand,limit=1] {AbsorptionAmount:360.0f}