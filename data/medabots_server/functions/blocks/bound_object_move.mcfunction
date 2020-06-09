# Go to position to affect
execute store result entity @s Pos[0] double 1 run data get storage medabots_server:bound_object X
execute store result entity @s Pos[1] double 1 run data get storage medabots_server:bound_object Y
execute store result entity @s Pos[2] double 1 run data get storage medabots_server:bound_object Z

# Transfer power to position
execute at @s positioned ~0.5 ~ ~0.5 run function medabots_server:blocks/bound_object_target

kill @s