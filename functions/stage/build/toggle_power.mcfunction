tag @a[scores={StageBuild=47}] add success

scoreboard players add @s NeededPower 1
scoreboard players set @s[scores={NeededPower=11}] NeededPower 0
execute if entity @s[scores={NeededPower=1..}] run tellraw @a[scores={StageBuild=47}] {"translate":"medabots_server:message.stage.stage_builder.alter_power","with":[{"selector":"@s"},{"score":{"objective":"NeededPower","name":"@s"}}],"color":"green"}