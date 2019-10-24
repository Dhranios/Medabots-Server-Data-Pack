execute if entity @e[tag=new,limit=1,distance=..0.7] run tag @a[scores={StageBuild=-4}] add fail
tag @a[scores={StageBuild=-4}] add success
tellraw @a[scores={StageBuild=-4},tag=!fail] {"translate":"medabots_server:message.stage.stage_builder.bind_object.bound","with":[{"selector":"@s"}],"color":"green"}
tellraw @a[scores={StageBuild=-4},tag=fail] {"translate":"medabots_server:message.stage.stage_builder.bind_object.self","with":[{"selector":"@s"}],"color":"green"}
execute if entity @a[scores={StageBuild=-4},tag=!fail] at @e[tag=new,limit=1] store result score @e[distance=..0.7,scores={PowerNeeded=0..},limit=1] HomeX run data get entity @s Pos[0]
execute if entity @a[scores={StageBuild=-4},tag=!fail] at @e[tag=new,limit=1] store result score @e[distance=..0.7,scores={PowerNeeded=0..},limit=1] HomeY run data get entity @s Pos[1]
execute if entity @a[scores={StageBuild=-4},tag=!fail] at @e[tag=new,limit=1] store result score @e[distance=..0.7,scores={PowerNeeded=0..},limit=1] HomeZ run data get entity @s Pos[2]
tag @a[scores={StageBuild=-4}] remove fail