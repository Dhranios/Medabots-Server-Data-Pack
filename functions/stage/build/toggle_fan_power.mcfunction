tag @a[scores={StageBuild=-5}] add success

execute if entity @s[scores={Moving=0}] run tellraw @a[scores={StageBuild=-5}] {"translate":"medabots_server:message.stage.stage_builder.alter_power.fan.slow","color":"green"}
execute if entity @s[scores={Moving=1}] run tellraw @a[scores={StageBuild=-5}] {"translate":"medabots_server:message.stage.stage_builder.alter_power.fan.fast","color":"green"}
execute if entity @s[scores={Moving=2}] run tellraw @a[scores={StageBuild=-5}] {"translate":"medabots_server:message.stage.stage_builder.alter_power.fan.off","color":"green"}
scoreboard players add @s Moving 1
scoreboard players set @s[scores={Moving=3}] Moving 0
