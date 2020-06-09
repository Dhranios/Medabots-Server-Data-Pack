# Count down timer
scoreboard players remove @s[scores={Time=10..}] Time 1
execute if entity @s[scores={Time=1..9},tag=east] positioned ~1 ~ ~ unless entity @e[distance=..0.7] run scoreboard players remove @s Time 1
execute if entity @s[scores={Time=1..9},tag=north] positioned ~ ~ ~-1 unless entity @e[distance=..0.7] run scoreboard players remove @s Time 1
execute if entity @s[scores={Time=1..9},tag=south] positioned ~ ~ ~1 unless entity @e[distance=..0.7] run scoreboard players remove @s Time 1
execute if entity @s[scores={Time=1..9},tag=west] positioned ~-1 ~ ~ unless entity @e[distance=..0.7] run scoreboard players remove @s Time 1

# Fall if pushed from the correct side
execute if entity @s[scores={Time=0}] run function medabots_server:blocks/drawbridge/hit

execute if entity @s[scores={Time=1}] run function medabots_server:blocks/drawbridge/turn_back
data modify entity @s[scores={Time=200}] ArmorItems[3].tag.CustomModelData set value 47
data modify entity @s[scores={Time=198}] ArmorItems[3].tag.CustomModelData set value 48
data modify entity @s[scores={Time=196}] ArmorItems[3].tag.CustomModelData set value 49
data modify entity @s[scores={Time=194}] ArmorItems[3].tag.CustomModelData set value 50
data modify entity @s[scores={Time=7}] ArmorItems[3].tag.CustomModelData set value 49
data modify entity @s[scores={Time=5}] ArmorItems[3].tag.CustomModelData set value 48
data modify entity @s[scores={Time=3}] ArmorItems[3].tag.CustomModelData set value 47
data modify entity @s[scores={Time=1}] ArmorItems[3].tag.CustomModelData set value 46

# Remove when cleaning up a stage
execute if entity @s[tag=dead] run function medabots_server:blocks/drawbridge/clean_up