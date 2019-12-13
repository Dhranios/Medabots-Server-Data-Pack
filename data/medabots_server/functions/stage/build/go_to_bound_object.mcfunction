execute if entity @e[distance=..0.7,limit=1,scores={HomeY=0..},type=!minecraft:player] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stage_builder","new"],Duration:100}
execute as @e[distance=..0.7,limit=1,scores={HomeY=0..},type=!minecraft:player] store result entity @e[tag=new,limit=1] Pos[0] double 1 run scoreboard players get @s HomeX
execute as @e[distance=..0.7,limit=1,scores={HomeY=0..},type=!minecraft:player] store result entity @e[tag=new,limit=1] Pos[1] double 1 run scoreboard players get @s HomeY
execute as @e[distance=..0.7,limit=1,scores={HomeY=0..},type=!minecraft:player] store result entity @e[tag=new,limit=1] Pos[2] double 1 run scoreboard players get @s HomeZ
execute if entity @e[distance=..0.7,limit=1,scores={HomeY=0..},type=!minecraft:player] at @e[tag=new,limit=1] align xyz run teleport @s ~0.5 ~3 ~0.5
execute if entity @e[distance=..0.7,limit=1,scores={HomeY=0..},type=!minecraft:player] run kill @e[tag=new,limit=1]
execute unless entity @e[distance=..0.7,limit=1,scores={HomeY=0..},type=!minecraft:player] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.go_to_bound_object.not_bound","color":"red"}
scoreboard players reset @s StageBuild