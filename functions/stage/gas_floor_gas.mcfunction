execute if entity @s[tag=confuse] run particle minecraft:dust 0.65 0 0.65 1 ~ ~ ~ 0.5 0.5 0.5 1 5
execute if entity @s[tag=confuse] run effect give @e[distance=..0.7,tag=hostile] minecraft:nausea 30 0 false
execute if entity @s[tag=no_defend] run particle minecraft:dust 0.35 0.35 0.35 1 ~ ~ ~ 0.5 0.5 0.5 1 5
execute if entity @s[tag=no_defend] run scoreboard players set @e[scores={DefenseTime=3..},distance=..0.7] DefenseTime 2
execute if entity @s[tag=ineffective] run particle minecraft:dust 0.65 0.65 0.65 1 ~ ~ ~ 0.5 0.5 0.5 1 5
execute if entity @s[tag=ineffective] run scoreboard players set @e[distance=..0.7,tag=hostile] IneffectiveTime 600
execute if entity @s[tag=falling_effect] run particle minecraft:dust 0.68 0.68 0 1 ~ ~ ~ 0.5 0.5 0.5 1 5
execute if entity @s[tag=falling_effect] as @e[distance=..0.7,nbt={OnGround:1b},tag=hostile] run function medabots_server:stage/gas_floor_gas_falling_hit