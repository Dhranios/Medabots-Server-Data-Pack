function medabots_server:spawn_entities/master_hand
tag @e[distance=..0.7,tag=master_hand] add arena
data merge entity @e[distance=..0.7,tag=master_hand,limit=1] {AbsorptionAmount:500.0f}