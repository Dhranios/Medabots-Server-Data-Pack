summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stage_builder","new"],Duration:100}
execute store result entity @e[tag=new,limit=1] Pos[0] double 1 run scoreboard players get @s HomeX
execute store result entity @e[tag=new,limit=1] Pos[1] double 1 run scoreboard players get @s HomeY
execute store result entity @e[tag=new,limit=1] Pos[2] double 1 run scoreboard players get @s HomeZ
execute as @e[tag=new,limit=1] at @s align xyz run teleport @s ~0.5 ~ ~0.5
execute as @e[distance=..0.7,scores={PowerNeeded=0..},tag=!floor_switch] run function medabots_server:stage/build/bind_object_target
execute as @e[distance=..0.7,tag=fan] run function medabots_server:stage/build/bind_object_target
kill @e[tag=new,limit=1]
tag @s add reset