execute if entity @e[distance=..0.7,scores={PowerNeeded=0..}] run tag @s add success
execute if entity @e[distance=..0.7,scores={PowerNeeded=0..}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.bind_object.select_object","color":"green"}
execute if entity @e[distance=..0.7,scores={PowerNeeded=0..}] store result score @s HomeZ run data get entity @e[distance=..0.7,scores={PowerNeeded=0..},limit=1] Pos[2]
execute if entity @e[distance=..0.7,scores={PowerNeeded=0..}] store result score @s HomeY run data get entity @e[distance=..0.7,scores={PowerNeeded=0..},limit=1] Pos[1]
execute if entity @e[distance=..0.7,scores={PowerNeeded=0..}] store result score @s HomeX run data get entity @e[distance=..0.7,scores={PowerNeeded=0..},limit=1] Pos[0]
execute unless entity @s[scores={HomeX=-2147483648..}] unless entity @e[distance=..0.7,scores={PowerNeeded=0..}] run tag @s add success
execute unless entity @s[scores={HomeX=-2147483648..}] unless entity @e[distance=..0.7,scores={PowerNeeded=0..}] run tellraw @s {"translate":"medabots_server:message.stage.stage_builder.bind_object.cannot_output","color":"red"}