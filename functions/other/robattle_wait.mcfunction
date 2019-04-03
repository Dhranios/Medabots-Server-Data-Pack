scoreboard players set @s[scores={Time=2..}] Time 950
execute unless block ~ ~ ~ minecraft:air{loaded:true} at @s at @e[tag=awaiting_starting_signal_location,sort=nearest,limit=1,distance=..1] run teleport @s ~ ~ ~
execute at @s run kill @e[tag=awaiting_starting_signal_location,sort=nearest,limit=1,distance=..1]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["awaiting_starting_signal_location"],Duration:2}
effect give @s minecraft:resistance 1 9 true
scoreboard players set @s Damage 0
scoreboard players set @s UsePart 0