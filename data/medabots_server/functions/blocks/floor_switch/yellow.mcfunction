scoreboard players remove @s[scores={Time=0..}] Time 1
scoreboard players operation @s[tag=trigger] Time = @s DelayTime
data modify entity @s[scores={Time=-1..0}] ArmorItems[3].tag.CustomModelData set value 28
data modify entity @s[scores={Time=1..}] ArmorItems[3].tag.CustomModelData set value 29