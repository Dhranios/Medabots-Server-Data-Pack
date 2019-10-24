execute if entity @s[scores={HomeX=-2147483648..}] run function medabots_server:stage/build/bind_object_targetting
execute unless entity @s[scores={HomeX=-2147483648..}] run function medabots_server:stage/build/bind_object_source
execute if entity @s[tag=!success] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.bind_object.cannot_bind","color":"red"}
scoreboard players reset @s[tag=reset] HomeZ
scoreboard players reset @s[tag=reset] HomeY
scoreboard players reset @s[tag=reset] HomeX
tag @s remove reset
tag @s remove success
scoreboard players reset @s StageBuild