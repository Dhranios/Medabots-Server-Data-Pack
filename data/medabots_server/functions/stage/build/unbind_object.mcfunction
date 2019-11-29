execute as @e[distance=..0.7,limit=1] if entity @s[scores={HomeX=-2147483648..}] run tag @a[scores={StageBuild=-11}] add success
execute as @e[distance=..0.7,limit=1] run tellraw @a[scores={StageBuild=-11},tag=success] {"translate":"medabots_server:message.stage.stage_builder.unbind_object.success","with":[{"selector":"@s"}],"color":"green"}
execute as @e[distance=..0.7,limit=1] run tellraw @a[scores={StageBuild=-11},tag=!success] {"translate":"medabots_server:message.stage.stage_builder.unbind_object.fail","color":"green"}
execute as @e[distance=..0.7,limit=1] if entity @s[scores={HomeX=-2147483648..}] run scoreboard players reset @s HomeX
execute as @e[distance=..0.7,limit=1] if entity @s[scores={HomeY=0..}] run scoreboard players reset @s HomeY
execute as @e[distance=..0.7,limit=1] if entity @s[scores={HomeZ=-2147483648..}] run scoreboard players reset @s HomeZ
tag @s remove success
scoreboard players reset @s StageBuild