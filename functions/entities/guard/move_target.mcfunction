spreadplayers ~ ~ 0 4 true @s
execute store result entity @s Pos[1] double 1 run scoreboard players get @s HomeY
execute at @s unless block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air run tag @s add final
execute at @s if block ~ ~ ~ minecraft:air run tag @s add final
execute at @s if block ~ ~ ~ #minecraft:slabs[type=bottom] run tag @s add final
execute at @s if block ~ ~-1 ~ minecraft:air run tag @s remove final
execute at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:water if block ~ ~-2 ~ minecraft:water run tag @s remove final
execute at @s if block ~ ~ ~ minecraft:water if block ~ ~-1 ~ minecraft:water run tag @s remove final
execute at @s if block ~ ~-1 ~ minecraft:lava run tag @s remove final
execute positioned as @s facing entity @e[tag=guard,distance=..0.1] feet positioned as @s run teleport @s ~ ~ ~ ~ ~
tag @s[y_rotation=40..50,tag=final] remove final
tag @s[y_rotation=-50..-40,tag=final] remove final
tag @s[y_rotation=130..140,tag=final] remove final
tag @s[y_rotation=-140..-130,tag=final] remove final
execute unless entity @s[tag=final] run scoreboard players add @s Time 1
execute unless entity @s[tag=final] if entity @s[scores={Time=5..}] run kill @s
execute unless entity @s[tag=final] if entity @s[scores={Time=..4}] run function medabots_server:entities/guard/move_target