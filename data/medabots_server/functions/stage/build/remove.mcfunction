tag @e[distance=..0.7,tag=!goal_area,tag=!starting_area,tag=!robattle,limit=1,type=!minecraft:player,tag=!bridge,tag=!raft,tag=!accelerator,tag=!floor_switch,tag=!door,tag=!mission] add dead
execute unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,tag=!robattle,limit=1,type=!minecraft:player,tag=dead] run tag @e[distance=..0.7,tag=!goal_area,tag=!starting_area,type=!minecraft:player] add me
execute unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,tag=!robattle,limit=1,type=!minecraft:player,tag=dead] positioned ~ ~-1.375 ~ run tag @e[distance=..0.7,limit=1,tag=raft] add me
execute positioned ~ ~-1.375 ~ as @e[distance=..0.7,tag=me,tag=raft] positioned ~ ~1.375 ~ unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=!raft] run tag @s add dead
execute as @e[distance=..0.7,tag=me,tag=accelerator] unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=!accelerator] run tag @s add dead
execute as @e[distance=..0.7,tag=me,tag=bridge] unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=!bridge,tag=!accelerator] run tag @s add dead
execute as @e[distance=..0.7,tag=me,tag=floor_switch] unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=!floor_switch] run tag @s add dead
execute as @e[distance=..0.7,tag=me,tag=door] unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=!door] run tag @s add dead
execute as @e[distance=..0.7,tag=me,tag=mission] unless entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,limit=1,type=!minecraft:player,tag=!mission,tag=!door] run tag @s add dead
tag @e[distance=..0.7,tag=me] remove me

execute as @e[distance=..0.7,tag=!goal_area,tag=!starting_area,tag=!robattle,limit=1,type=!minecraft:player,tag=dead] store result score @s HomeX run data get entity @s Pos[0]
execute as @e[distance=..0.7,tag=!goal_area,tag=!starting_area,tag=!robattle,limit=1,type=!minecraft:player,tag=dead] store result score @s HomeY run data get entity @s Pos[1]
execute as @e[distance=..0.7,tag=!goal_area,tag=!starting_area,tag=!robattle,limit=1,type=!minecraft:player,tag=dead] store result score @s HomeZ run data get entity @s Pos[2]
execute as @e[distance=..0.7,tag=!goal_area,tag=!starting_area,tag=!robattle,limit=1,type=!minecraft:player,tag=dead] at @e[tag=no_ticking,scores={HomeX=-2147483648..}] if score @s HomeX = @e[distance=..0.7,limit=1,scores={HomeX=-2147483648..}] HomeX if score @s HomeY = @e[distance=..0.7,limit=1,scores={HomeX=-2147483648..}] HomeY if score @s HomeZ = @e[distance=..0.7,limit=1,scores={HomeX=-2147483648..}] HomeZ run tag @e[distance=..0.7,limit=1] add unlink

scoreboard players reset @e[tag=unlink] HomeX
scoreboard players reset @e[tag=unlink] HomeY
scoreboard players reset @e[tag=unlink] HomeZ
tag @e[tag=unlink] remove unlink

execute if entity @e[distance=..0.7,tag=!goal_area,tag=!starting_area,tag=!robattle,limit=1,type=!minecraft:player,tag=dead] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.removed","with":[{"selector":"@e[distance=..0.7,tag=!goal_area,tag=!starting_area,tag=!robattle,limit=1,tag=dead]"}],"color":"green"}
execute unless entity @e[distance=..0.7,tag=goal_area] unless entity @e[distance=..0.7,tag=starting_area] unless entity @e[distance=..0.7,tag=robattle] unless entity @e[limit=1,type=!minecraft:player,tag=dead] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.nothing_to_remove","color":"red"}
execute if entity @e[distance=..0.7,tag=starting_area] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.cannot_remove","color":"red"}
execute if entity @e[distance=..0.7,tag=goal_area] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.cannot_remove","color":"red"}
execute if entity @e[distance=..0.7,tag=robattle] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.cannot_remove","color":"red"}

execute as @e[distance=..0.7,tag=pot,tag=dead] run function medabots_server:stage/build/put_out_of_pot
execute as @e[distance=..0.7,tag=action_floor,tag=dead] run function medabots_server:stage/build/put_out_of_action_floor

execute as @e[distance=..0.7,tag=mission,tag=dead] run scoreboard players operation #temp Stage = @s Stage
execute as @e[distance=..0.7,tag=mission,tag=dead] run scoreboard players operation #temp StageIndex = @s StageIndex
execute as @e[distance=..0.7,tag=mission,tag=dead] as @e[tag=mission,type=minecraft:armor_stand] if score @s Stage = #temp Stage if score @s StageIndex > #temp StageIndex run scoreboard players remove @s StageIndex 1
execute as @e[distance=..0.7,tag=mission,tag=dead] run scoreboard players reset #temp Stage
execute as @e[distance=..0.7,tag=mission,tag=dead] run scoreboard players reset #temp StageIndex

scoreboard players reset @s StageBuild