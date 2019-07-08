tag @a[scores={StageBuild=47}] add success

execute store result score @s HomeX run data get entity @s Pos[0]
execute store result score @s HomeY run data get entity @s Pos[1]
execute store result score @s HomeZ run data get entity @s Pos[2]
execute at @e[tag=floor_switch,tag=no_ticking] if score @s HomeX = @e[distance=..0.7,tag=floor_switch,limit=1] HomeX if score @s HomeY = @e[distance=..0.7,tag=floor_switch,limit=1] HomeY if score @s HomeZ = @e[distance=..0.7,tag=floor_switch,limit=1] HomeZ run tag @s add has_floor_switch

execute if entity @s[tag=has_floor_switch] run tellraw @a[scores={StageBuild=47}] {"translate":"medabots_server:message.stage.stage_builder.activate_object.bound","with":[{"selector":"@s"}],"color":"red"}
execute if entity @s[tag=!enabled,tag=!has_floor_switch] run tellraw @a[scores={StageBuild=47}] {"translate":"medabots_server:message.stage.stage_builder.activate_object.enabled","with":[{"selector":"@s"}],"color":"green"}
execute if entity @s[tag=enabled,tag=!has_floor_switch] run tellraw @a[scores={StageBuild=47}] {"translate":"medabots_server:message.stage.stage_builder.activate_object.disabled","with":[{"selector":"@s"}],"color":"green"}
tag @s[tag=enabled,tag=!has_floor_switch] add was_enabled
tag @s[tag=!has_floor_switch] remove enabled
tag @s[tag=!was_enabled,tag=!has_floor_switch] add enabled
tag @s[tag=!has_floor_switch] remove was_enabled
tag @s remove has_floor_switch
