# New gass floors need scores and carpet
execute unless entity @s[scores={Time=0..}] run scoreboard players add @s Time 20

# Coundown blowing
scoreboard players remove @s[scores={Time=1..19}] Time 1
execute if score @s[scores={Time=20}] PowerAmount >= @s PowerNeeded run scoreboard players remove @s Time 1
scoreboard players remove @s[scores={Time=21..}] Time 1

# Fire in the hole!
execute if entity @s[scores={Time=0}] run playsound medabots_server:block.gas_floor hostile @a ~ ~ ~ 1
scoreboard players set @s[scores={Time=0}] Time 200

data modify entity @s[scores={Time=20}] ArmorItems[3].tag.CustomModelData set value 247
data modify entity @s[scores={Time=16}] ArmorItems[3].tag.CustomModelData set value 248
data modify entity @s[scores={Time=12}] ArmorItems[3].tag.CustomModelData set value 249
data modify entity @s[scores={Time=8}] ArmorItems[3].tag.CustomModelData set value 250
data modify entity @s[scores={Time=4}] ArmorItems[3].tag.CustomModelData set value 251
data modify entity @s[scores={Time=200}] ArmorItems[3].tag.CustomModelData set value 252
data modify entity @s[scores={Time=160}] ArmorItems[3].tag.CustomModelData set value 251
data modify entity @s[scores={Time=156}] ArmorItems[3].tag.CustomModelData set value 250
data modify entity @s[scores={Time=152}] ArmorItems[3].tag.CustomModelData set value 249
data modify entity @s[scores={Time=148}] ArmorItems[3].tag.CustomModelData set value 248
data modify entity @s[scores={Time=144}] ArmorItems[3].tag.CustomModelData set value 247
data modify entity @s[scores={Time=140}] ArmorItems[3].tag.CustomModelData set value 246

execute if entity @s[scores={Time=121..}] run function medabots_server:blocks/gas_floor/gas

# Custom stage object powering
execute if entity @s[tag=custom_stage] run function medabots_server:blocks/custom_stage_object