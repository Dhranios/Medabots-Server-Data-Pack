execute if entity @s[tag=slow] if block ^ ^ ^0.4 minecraft:air run teleport @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=slow] if block ^ ^ ^0.4 #minecraft:slabs run teleport @s ^ ^0.5 ^0.1 ~ ~
execute if entity @s[tag=!slow,tag=!fast] if block ^ ^ ^0.4 minecraft:air run teleport @s ^ ^ ^0.2 ~ ~
execute if entity @s[tag=!slow,tag=!fast] if block ^ ^ ^0.4 #minecraft:slabs run teleport @s ^ ^0.5 ^0.2 ~ ~
execute if entity @s[tag=fast] if block ^ ^ ^0.4 minecraft:air run teleport @s ^ ^ ^0.3 ~ ~
execute if entity @s[tag=fast] if block ^ ^ ^0.4 #minecraft:slabs run teleport @s ^ ^0.5 ^0.3 ~ ~
