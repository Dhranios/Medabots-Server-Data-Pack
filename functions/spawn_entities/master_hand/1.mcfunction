function medabots_server:spawn_entities/master_hand
tag @e[distance=..0.7,tag=master_hand] add smash_bros
data merge entity @e[distance=..0.7,tag=master_hand,limit=1] {AbsorptionAmount:300.0f}