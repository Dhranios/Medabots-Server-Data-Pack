# Go to position to affect
execute store result entity @s Pos[0] double 1 run data get storage medabots_server:data bound_object.x
execute store result entity @s Pos[1] double 1 run data get storage medabots_server:data bound_object.y
execute store result entity @s Pos[2] double 1 run data get storage medabots_server:data bound_object.z

# Transfer power to position
execute at @s positioned ~0.5 ~ ~0.5 run function medabots_server:blocks/floor_switch/custom_stage_target

kill @s