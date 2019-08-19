tag @a[scores={StageBuild=47}] add success

execute if entity @s[scores={Moving=0}] run tellraw @a[scores={StageBuild=47}] {"translate":"medabots_server:message.stage.stage_builder.activate_object.fan.slow","color":"green"}
execute if entity @s[scores={Moving=1}] run tellraw @a[scores={StageBuild=47}] {"translate":"medabots_server:message.stage.stage_builder.activate_object.fan.fast","color":"green"}
execute if entity @s[scores={Moving=2}] run tellraw @a[scores={StageBuild=47}] {"translate":"medabots_server:message.stage.stage_builder.activate_object.fan.off","color":"green"}
scoreboard players add @s Moving 1
scoreboard players set @s[scores={Moving=3}] Moving 0
