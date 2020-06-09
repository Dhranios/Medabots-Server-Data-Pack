function medabots_server:set_blocks/mirror
data modify entity @e[tag=mirror,distance=..0.7,limit=1] Pose.Head[1] set value -45.0f
tag @e[tag=mirror,distance=..0.7,limit=1] add -45