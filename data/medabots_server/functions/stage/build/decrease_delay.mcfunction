tag @s add no
execute unless entity @e[distance=..0.7,tag=fan] if entity @e[distance=..0.7,scores={DelayTime=20..},tag=!action_floor,tag=!pot,tag=bomb] run tag @s remove no
execute unless entity @e[distance=..0.7,tag=fan] if entity @e[distance=..0.7,scores={DelayTime=40..},tag=!action_floor,tag=!pot] run tag @s remove no
execute unless entity @e[distance=..0.7,tag=fan] run tellraw @s[tag=no] {"translate":"medabots_server:message.stage.stage_builder.delay.cannot_decrease","color":"red"}
execute unless entity @e[distance=..0.7,tag=fan] if entity @s[tag=!no] run scoreboard players remove @e[distance=..0.7,tag=!action_floor,tag=!pot] DelayTime 20
execute unless entity @e[distance=..0.7,tag=fan] if entity @s[tag=!no] as @e[distance=..0.7,scores={DelayTime=0..},tag=!action_floor,tag=!pot] run tellraw @a[scores={StageBuild=-8}] {"translate":"medabots_server:message.stage.stage_builder.delay.decreased","with":[{"selector":"@s"},{"score":{"objective":"DelayTime","name":"@s"}}],"color":"green"}

scoreboard players add @e[distance=..0.7,tag=fan] DelayTime 1
scoreboard players set @e[distance=..0.7,tag=fan,scores={DelayTime=3}] DelayTime 0
execute if entity @e[distance=..0.7,tag=fan,scores={DelayTime=0}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.delay.fan_0","color":"green"}
execute if entity @e[distance=..0.7,tag=fan,scores={DelayTime=1}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.delay.fan_1","color":"green"}
execute if entity @e[distance=..0.7,tag=fan,scores={DelayTime=2}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.delay.fan_2","color":"green"}
scoreboard players reset @s StageBuild
tag @s remove no