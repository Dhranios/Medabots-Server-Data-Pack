scoreboard players add @e[distance=..0.7,scores={DelayTime=0..},tag=!action_floor,tag=!pot] DelayTime 20
execute as @e[distance=..0.7,scores={DelayTime=0..},tag=!action_floor,tag=!pot] run tellraw @a[scores={StageBuild=-6}] {"translate":"medabots_server:message.stage.stage_builder.delay.increased","with":[{"selector":"@s"},{"score":{"objective":"DelayTime","name":"@s"}}],"color":"green"}
execute unless entity @e[distance=..0.7,scores={DelayTime=0..},tag=!action_floor,tag=!pot] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.delay.cannot_increase","color":"red"}