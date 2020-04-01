tag @s[tag=walking] add downing
execute rotated ~ 0 positioned ^ ^ ^0.6 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air unless entity @s[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s remove downing
execute rotated ~ 0 positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air unless entity @s[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s remove downing
execute rotated ~ 0 positioned ^1 ^ ^ if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air unless entity @s[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s remove downing
execute rotated ~ 0 positioned ^ ^ ^0.6 if block ~ ~ ~ minecraft:barrier if block ~ ~1 ~ minecraft:barrier unless entity @s[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s remove downing
execute rotated ~ 0 positioned ^-1 ^ ^ if block ~ ~ ~ minecraft:barrier if block ~ ~1 ~ minecraft:barrier unless entity @s[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s remove downing
execute rotated ~ 0 positioned ^1 ^ ^ if block ~ ~ ~ minecraft:barrier if block ~ ~1 ~ minecraft:barrier unless entity @s[type=minecraft:husk,distance=..0.7,tag=cannon] run tag @s remove downing

tag @s[tag=downing] add downed
execute if entity @s[tag=downing] run playsound medabots_server:entity.rubberobo.downing neutral @a ~ ~ ~ 1
tag @s[tag=downing] remove walking
scoreboard players set @s[tag=downing] Time 160
tag @s[tag=downing] remove downing