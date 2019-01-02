scoreboard players set @s[scores={Time=2..}] Time 950
execute at @e[tag=awaiting_verification_location,sort=nearest,limit=1,distance=..1] run teleport @s ~ ~ ~
kill @e[tag=awaiting_verification_location,sort=nearest,limit=1,distance=..1]
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["awaiting_verification_location"],Duration:2}
effect give @s minecraft:resistance 1000000 9 true