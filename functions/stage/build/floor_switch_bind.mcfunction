execute if entity @e[distance=..0.7,tag=floor_switch] run tag @s add success
execute if entity @e[distance=..0.7,tag=floor_switch] store result score @s HomeX run data get entity @e[distance=..0.7,tag=floor_switch,limit=1] Pos[0]
execute if entity @e[distance=..0.7,tag=floor_switch] store result score @s HomeY run data get entity @e[distance=..0.7,tag=floor_switch,limit=1] Pos[1]
execute if entity @e[distance=..0.7,tag=floor_switch] store result score @s HomeZ run data get entity @e[distance=..0.7,tag=floor_switch,limit=1] Pos[2]
execute if entity @e[distance=..0.7,tag=floor_switch] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.floor_switch.select_object","color":"green"}
execute unless entity @s[scores={HomeX=-2147483648..}] unless entity @e[distance=..0.7,tag=floor_switch] run tag @s add success
execute unless entity @s[scores={HomeX=-2147483648..}] unless entity @e[distance=..0.7,tag=floor_switch] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.floor_switch.no_floor_switch","color":"red"}
execute if entity @s[scores={HomeX=-2147483648..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["stage_builder","new"],Duration:100}
execute store result entity @e[tag=new,limit=1] Pos[0] double 1 run scoreboard players get @s HomeX
execute store result entity @e[tag=new,limit=1] Pos[1] double 1 run scoreboard players get @s HomeY
execute store result entity @e[tag=new,limit=1] Pos[2] double 1 run scoreboard players get @s HomeZ
execute as @e[tag=new,limit=1] at @s run teleport @s ~0.5 ~ ~0.5
execute if entity @s[scores={HomeX=-2147483648..}] as @e[distance=..0.7,tag=door] run function medabots_server:stage/build/floor_switch_bind_object
execute if entity @s[scores={HomeX=-2147483648..}] as @e[distance=..0.7,tag=fan] run function medabots_server:stage/build/floor_switch_bind_object
execute if entity @s[scores={HomeX=-2147483648..}] as @e[distance=..0.7,tag=press_wall,tag=!enabled] run function medabots_server:stage/build/floor_switch_bind_object
execute if entity @s[scores={HomeX=-2147483648..}] as @e[distance=..0.7,tag=spring_wall,tag=!enabled] run function medabots_server:stage/build/floor_switch_bind_object
execute if entity @s[scores={HomeX=-2147483648..}] as @e[distance=..0.7,tag=laser_trap,tag=!enabled] run function medabots_server:stage/build/floor_switch_bind_object
execute if entity @s[scores={HomeX=-2147483648..}] as @e[distance=..0.7,tag=alarm] run function medabots_server:stage/build/floor_switch_bind_object
execute if entity @s[scores={HomeX=-2147483648..}] as @e[distance=..0.7,tag=hammer_punch,tag=!enabled] run function medabots_server:stage/build/floor_switch_bind_object
execute if entity @s[scores={HomeX=-2147483648..}] as @e[distance=..0.7,tag=gas_floor,tag=!enabled] run function medabots_server:stage/build/floor_switch_bind_object
execute if entity @s[scores={HomeX=-2147483648..}] as @e[distance=..0.7,tag=action_floor,tag=!enabled] run function medabots_server:stage/build/floor_switch_bind_object
kill @e[tag=new,limit=1]
scoreboard players reset @s[scores={HomeX=-2147483648..},tag=bound] HomeZ
scoreboard players reset @s[scores={HomeX=-2147483648..},tag=bound] HomeY
scoreboard players reset @s[scores={HomeX=-2147483648..},tag=bound] HomeX
execute if entity @s[tag=!success] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.floor_switch.cannot_bind","color":"red"}
tag @s remove bound
tag @s remove success
scoreboard players reset @s StageBuild