execute unless entity @e[distance=..0.7,tag=fan] unless entity @e[distance=..0.7,scores={DelayTime=0..},tag=!action_floor,tag=!pot] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.delay.cannot_increase","color":"red"}
execute unless entity @e[distance=..0.7,tag=fan] run scoreboard players add @e[distance=..0.7,scores={DelayTime=0..},tag=!action_floor,tag=!pot] DelayTime 20
execute unless entity @e[distance=..0.7,tag=fan] as @e[distance=..0.7,scores={DelayTime=0..},tag=!action_floor,tag=!pot] run tellraw @a[scores={StageBuild=-7}] {"translate":"medabots_server:message.stage.stage_builder.delay.increased","with":[{"selector":"@s"},{"score":{"objective":"DelayTime","name":"@s"}}],"color":"green"}

scoreboard players remove @e[distance=..0.7,tag=fan] DelayTime 1
scoreboard players set @e[distance=..0.7,tag=fan,scores={DelayTime=-1}] DelayTime 2
execute if entity @e[distance=..0.7,tag=fan,scores={DelayTime=0}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.delay.fan_0","color":"green"}
execute if entity @e[distance=..0.7,tag=fan,scores={DelayTime=1}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.delay.fan_1","color":"green"}
execute if entity @e[distance=..0.7,tag=fan,scores={DelayTime=2}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.delay.fan_2","color":"green"}
scoreboard players reset @s StageBuild