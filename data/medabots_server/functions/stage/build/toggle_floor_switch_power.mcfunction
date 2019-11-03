tag @a[scores={StageBuild=-5}] add success

scoreboard players add @s PowerNeeded 1
scoreboard players set @s[scores={PowerNeeded=11}] PowerNeeded 1
tellraw @a[scores={StageBuild=-5}] {"translate":"medabots_server:message.stage.stage_builder.alter_power.floor_switch","with":[{"selector":"@s"},{"score":{"objective":"NeededPower","name":"@s"}}],"color":"green"}
