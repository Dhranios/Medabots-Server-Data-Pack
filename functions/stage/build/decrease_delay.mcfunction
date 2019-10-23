tag @s add no
execute if entity @e[distance=..0.7,scores={DelayTime=20..},tag=!action_floor,tag=!pot,tag=bomb] run tag @s remove no
execute if entity @e[distance=..0.7,scores={DelayTime=40..},tag=!action_floor,tag=!pot] run tag @s remove no
tellraw @s[tag=no] {"translate":"medabots_server:message.stage.stage_builder.delay.cannot_decrease","color":"red"}
tag @s remove no
scoreboard players remove @e[distance=..0.7,scores={DelayTime=20},tag=!action_floor,tag=!pot,tag=bomb] DelayTime 20
scoreboard players remove @e[distance=..0.7,scores={DelayTime=40..},tag=!action_floor,tag=!pot] DelayTime 20
execute as @e[distance=..0.7,scores={DelayTime=0..},tag=!action_floor,tag=!pot,tag=bomb] run tellraw @a[scores={StageBuild=-7}] {"translate":"medabots_server:message.stage.stage_builder.delay.decreased","with":[{"selector":"@s"},{"score":{"objective":"DelayTime","name":"@s"}}],"color":"green"}
execute as @e[distance=..0.7,scores={DelayTime=20..},tag=!action_floor,tag=!pot,tag=!bomb] run tellraw @a[scores={StageBuild=-7}] {"translate":"medabots_server:message.stage.stage_builder.delay.decreased","with":[{"selector":"@s"},{"score":{"objective":"DelayTime","name":"@s"}}],"color":"green"}