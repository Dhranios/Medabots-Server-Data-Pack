tag @s add no
execute if entity @e[distance=..0.7,scores={Range=3..},tag=press_wall] run tag @s remove no
execute if entity @e[distance=..0.7,scores={Range=2..},tag=fan] run tag @s remove no
tellraw @s[tag=no] {"translate":"medabots_server:message.stage.stage_builder.range.cannot_decrease","color":"red"}
execute if entity @s[tag=!no] run scoreboard players remove @e[distance=..0.7,scores={Range=2..}] Range 1
execute if entity @s[tag=!no] as @e[distance=..0.7,scores={Range=0..}] run tellraw @a[scores={StageBuild=-10}] {"translate":"medabots_server:message.stage.stage_builder.range.decreased","with":[{"selector":"@s"},{"score":{"objective":"Range","name":"@s"}}],"color":"green"}
scoreboard players reset @s StageBuild
tag @s remove no