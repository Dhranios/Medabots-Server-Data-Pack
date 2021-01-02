scoreboard players remove @s[scores={Time=1..}] Time 1
scoreboard players set @s[tag=trigger] Time 2
data modify entity @s[scores={Time=0..1}] ArmorItems[3].tag.CustomModelData set value 30
data modify entity @s[scores={Time=2..}] ArmorItems[3].tag.CustomModelData set value 31
tag @s[scores={Time=0}] add toggle