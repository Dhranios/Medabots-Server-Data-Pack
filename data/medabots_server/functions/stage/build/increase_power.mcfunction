tag @s add no
execute if entity @e[distance=..0.7,scores={PowerNeeded=0..}] run tag @s remove no
execute if entity @e[distance=..0.7,tag=floor_switch] run tag @s remove no
tellraw @s[tag=no] {"translate":"medabots_server:message.stage.stage_builder.power.cannot_increase","color":"red"}
execute if entity @s[tag=!no] run scoreboard players add @e[distance=..0.7,scores={PowerNeeded=-2147483648..}] PowerNeeded 1
execute if entity @s[tag=!no] as @e[distance=..0.7,scores={PowerNeeded=0..},tag=!floor_switch] run tellraw @a[scores={StageBuild=-5}] {"translate":"medabots_server:message.stage.stage_builder.power.increased","with":[{"selector":"@s"},{"score":{"objective":"PowerNeeded","name":"@s"}}],"color":"green"}
execute if entity @s[tag=!no] as @e[distance=..0.7,scores={PowerNeeded=-2147483648..},tag=floor_switch] run tellraw @a[scores={StageBuild=-5}] {"translate":"medabots_server:message.stage.stage_builder.power.increased.floor_switch","with":[{"score":{"objective":"PowerNeeded","name":"@s"}}],"color":"green"}

scoreboard players reset @s StageBuild
tag @s remove no