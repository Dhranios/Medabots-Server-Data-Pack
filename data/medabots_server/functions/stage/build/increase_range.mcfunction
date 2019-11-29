tag @s add no
execute if entity @e[distance=..0.7,scores={Range=..14},tag=press_wall] run tag @s remove no
execute if entity @e[distance=..0.7,scores={Range=..59},tag=fan] run tag @s remove no
tellraw @s[tag=no] {"translate":"medabots_server:message.stage.stage_builder.range.cannot_increase","color":"red"}
execute if entity @s[tag=!no] run scoreboard players add @e[distance=..0.7,scores={Range=..14},tag=press_wall] Range 1
execute if entity @s[tag=!no] as @e[distance=..0.7,scores={Range=1..}] run tellraw @a[scores={StageBuild=-9}] {"translate":"medabots_server:message.stage.stage_builder.range.increased","with":[{"selector":"@s"},{"score":{"objective":"Range","name":"@s"}}],"color":"green"}
scoreboard players reset @s StageBuild
tag @s remove no