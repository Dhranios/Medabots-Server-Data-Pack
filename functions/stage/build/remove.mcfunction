tag @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=!bridge,tag=!raft,tag=!accelerator,tag=!floor_switch] add dead
execute unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=dead] run tag @e[distance=..0.7,limit=1,tag=!goal_area,tag=!starting_area,type=!minecraft:player] add me
execute unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=dead] positioned ~ ~-1.375 ~ run tag @e[distance=..0.7,limit=1,tag=raft] add me
execute positioned ~ ~-1.375 ~ as @e[distance=..0.7,tag=me,tag=raft] positioned ~ ~1.375 ~ unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=!raft] run tag @s add dead
execute as @e[distance=..0.7,tag=me,tag=accelerator] unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=!accelerator,tag=!accelerator] run tag @s add dead
execute as @e[distance=..0.7,tag=me,tag=bridge] unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=!bridge] run tag @s add dead
execute as @e[distance=..0.7,tag=me,tag=floor_switch] unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=!floor_switch] run tag @s add dead

execute as @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=dead,tag=!floor_switch] store result score @s HomeX run data get entity @s Pos[0]
execute as @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=dead,tag=!floor_switch] store result score @s HomeY run data get entity @s Pos[1]
execute as @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=dead,tag=!floor_switch] store result score @s HomeZ run data get entity @s Pos[2]
execute as @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=dead,tag=!floor_switch] at @e[tag=floor_switch,tag=no_ticking] if score @s HomeX = @e[distance=..0.7,tag=floor_switch,limit=1] HomeX if score @s HomeY = @e[distance=..0.7,tag=floor_switch,limit=1] HomeY if score @s HomeZ = @e[distance=..0.7,tag=floor_switch,limit=1] HomeZ run tag @s add has_floor_switch
execute as @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=dead,tag=!floor_switch] at @e[tag=floor_switch,tag=no_ticking] if score @s HomeX = @e[distance=..0.7,tag=floor_switch,limit=1] HomeX if score @s HomeY = @e[distance=..0.7,tag=floor_switch,limit=1] HomeY if score @s HomeZ = @e[distance=..0.7,tag=floor_switch,limit=1] HomeZ run tag @e[distance=..0.7,tag=floor_switch,limit=1] add dead
execute if entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=dead,tag=!has_floor_switch] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.removed","with":[{"selector":"@e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,tag=dead]"}],"color":"green"}
execute if entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=dead,tag=has_floor_switch] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.removed.floor_switch","with":[{"selector":"@e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,tag=dead]"}],"color":"green"}
execute unless entity @e[limit=1,type=!minecraft:player,tag=dead] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.nothing_to_remove","color":"red"}

execute if entity @e[distance=..0.7,tag=starting_area] run tellraw @s[tag=!allowed] {"translate":"medabots_server:message.stage.stage_builder.cannot_remove","color":"red"}
execute if entity @e[distance=..0.7,tag=goal_area] run tellraw @s[tag=!allowed] {"translate":"medabots_server:message.stage.stage_builder.cannot_remove","color":"red"}

execute as @e[distance=..0.7,tag=pot,tag=dead] run function medabots_server:stage/build/put_out_of_pot
execute as @e[distance=..0.7,tag=action_floor,tag=dead] run function medabots_server:stage/build/put_out_of_action_floor

scoreboard players reset @s StageBuild