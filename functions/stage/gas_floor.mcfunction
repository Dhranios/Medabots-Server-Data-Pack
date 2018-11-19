# New gass floors need scores and carpet
execute unless entity @s[scores={Time=0..}] run scoreboard players add @s Time 20
setblock ~ ~ ~ minecraft:light_gray_carpet

# Coundown blowing
scoreboard players remove @s[scores={Time=20..}] Time 1
scoreboard players remove @s[scores={Time=1..20},tag=enabled] Time 1

# Fire in the hole!
execute if entity @s[scores={Time=0}] run playsound medabots_server:block.gas_floor hostile @a ~ ~ ~ 1
scoreboard players set @s[scores={Time=0}] Time 200
execute if entity @s[scores={Time=121..},tag=confuse] run particle minecraft:dust 0.65 0 0.65 1 ~ ~ ~ 0.5 0.5 0.5 1 5
execute if entity @s[scores={Time=121..},tag=confuse] run effect give @e[distance=..0.7,tag=hostile] minecraft:nausea 30 0 false
execute if entity @s[scores={Time=121..},tag=no_defend] run particle minecraft:dust 0.35 0.35 0.35 1 ~ ~ ~ 0.5 0.5 0.5 1 5
execute if entity @s[scores={Time=121..},tag=no_defend] run scoreboard players set @e[scores={DefenseTime=3..},distance=..0.7] DefenseTime 2
execute if entity @s[scores={Time=121..},tag=ineffective] run particle minecraft:dust 0.65 0.65 0.65 1 ~ ~ ~ 0.5 0.5 0.5 1 5
execute if entity @s[scores={Time=121..},tag=ineffective] run scoreboard players set @e[distance=..0.7,tag=hostile] IneffectiveTime 600
execute if entity @s[scores={Time=121..},tag=falling_effect] run particle minecraft:dust 0.68 0.68 0 1 ~ ~ ~ 0.5 0.5 0.5 1 5
execute if entity @s[scores={Time=121..},tag=falling_effect] run tag @e[tag=!falling,distance=..0.7,nbt={OnGround:1b},tag=hostile] add falling
effect give @e[tag=falling,tag=!undead] minecraft:instant_damage 1 0 false
effect give @e[tag=falling,tag=undead] minecraft:instant_health 1 0 false
effect give @e[tag=falling] minecraft:levitation 1 30 false
effect give @e[tag=falling] minecraft:nausea 5 0 false
scoreboard players set @a[tag=falling,scores={Time=2..}] Time 1000
tag @e[tag=falling] remove falling

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run setblock ~ ~ ~ minecraft:air
kill @s[tag=dead]