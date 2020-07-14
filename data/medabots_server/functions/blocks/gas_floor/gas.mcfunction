execute if entity @s[tag=confuse] run particle minecraft:dust 0.65 0 0.65 1 ~ ~ ~ 0.3 0.3 0.3 1 5
execute if entity @s[tag=confuse] run scoreboard players set @e[distance=..0.7] ConfuseTime 600
execute if entity @s[tag=no_defend] run particle minecraft:dust 0.35 0.35 0.35 1 ~ ~ ~ 0.3 0.3 0.3 1 5
execute if entity @s[tag=no_defend] run scoreboard players set @e[distance=..0.7] NoDefendTime 600
execute if entity @s[tag=ineffective] run particle minecraft:dust 0.65 0.65 0.65 1 ~ ~ ~ 0.3 0.3 0.3 1 5
execute if entity @s[tag=ineffective] run scoreboard players set @e[distance=..0.7,tag=hostile] IneffectiveTime 600
execute if entity @s[tag=falling] run particle minecraft:dust 0.68 0.68 0 1 ~ ~ ~ 0.3 0.3 0.3 1 5
execute if entity @s[tag=falling] as @e[distance=..0.7,nbt={OnGround:1b},tag=hostile] run function medabots_server:blocks/gas_floor/gas_falling_hit