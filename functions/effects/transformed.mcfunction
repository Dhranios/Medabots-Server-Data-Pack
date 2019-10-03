# Count down timer
scoreboard players remove @s[scores={TransformLTime=..2,Time=0}] TransformLTime 1
scoreboard players remove @s[scores={TransformRTime=..2,Time=0}] TransformRTime 1
scoreboard players remove @s[scores={TransformHTime=..2,Time=0}] TransformHTime 1
scoreboard players remove @s[scores={TransformLTime=3..}] TransformLTime 1
scoreboard players remove @s[scores={TransformRTime=3..}] TransformRTime 1
scoreboard players remove @s[scores={TransformHTime=3..}] TransformHTime 1

execute if entity @s[type=minecraft:player] run function medabots_server:effects/transformed/player
execute if entity @s[type=!minecraft:player] run function medabots_server:effects/transformed/cpu

# Remove timer
scoreboard players reset @s[scores={TransformLTime=0}] TransformLID
scoreboard players reset @s[scores={TransformRTime=0}] TransformRID
scoreboard players reset @s[scores={TransformHTime=0}] TransformHID
scoreboard players reset @s[scores={TransformLTime=0}] TransformLTime
scoreboard players reset @s[scores={TransformRTime=0}] TransformRTime
scoreboard players reset @s[scores={TransformHTime=0}] TransformHTime