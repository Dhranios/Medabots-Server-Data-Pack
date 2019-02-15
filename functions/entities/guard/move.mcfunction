execute if entity @s[tag=slow] if block ^ ^ ^0.4 minecraft:air run teleport @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=slow] if block ^ ^ ^0.4 minecraft:comparator run teleport @s ^ ^ ^0.1 ~ ~
execute if entity @s[tag=slow] if block ^ ^ ^0.4 #minecraft:slabs aligned y run teleport @s ^ ^0.5 ^0.1 ~ ~
execute if entity @s[tag=slow] if block ~ ~ ~ #minecraft:slabs unless block ^ ^ ^0.4 minecraft:air unless block ^ ^ ^0.4 minecraft:comparator if block ^ ^0.5 ^0.4 minecraft:air run teleport @s ^ ^0.5 ^0.1 ~ ~
execute if entity @s[tag=slow] if block ~ ~ ~ #minecraft:slabs unless block ^ ^ ^0.4 minecraft:air unless block ^ ^ ^0.4 minecraft:comparator if block ^ ^0.5 ^0.4 minecraft:comparator run teleport @s ^ ^0.5 ^0.1 ~ ~
execute if entity @s[tag=!slow,tag=!fast] if block ^ ^ ^0.4 minecraft:air run teleport @s ^ ^ ^0.2 ~ ~
execute if entity @s[tag=!slow,tag=!fast] if block ^ ^ ^0.4 minecraft:comparator run teleport @s ^ ^ ^0.2 ~ ~
execute if entity @s[tag=!slow,tag=!fast] if block ^ ^ ^0.4 #minecraft:slabs aligned y run teleport @s ^ ^0.5 ^0.2 ~ ~
execute if entity @s[tag=!slow,tag=!fast] if block ~ ~ ~ #minecraft:slabs unless block ^ ^ ^0.4 minecraft:air unless block ^ ^ ^0.4 minecraft:comparator if block ^ ^0.5 ^0.4 minecraft:air run teleport @s ^ ^0.5 ^0.2 ~ ~
execute if entity @s[tag=!slow,tag=!fast] if block ~ ~ ~ #minecraft:slabs unless block ^ ^ ^0.4 minecraft:air unless block ^ ^ ^0.4 minecraft:comparator if block ^ ^0.5 ^0.4 minecraft:comparator run teleport @s ^ ^0.5 ^0.2 ~ ~
execute if entity @s[tag=fast] if block ^ ^ ^0.4 minecraft:air run teleport @s ^ ^ ^0.4 ~ ~
execute if entity @s[tag=fast] if block ^ ^ ^0.4 minecraft:comparator run teleport @s ^ ^ ^0.4 ~ ~
execute if entity @s[tag=fast] if block ^ ^ ^0.4 #minecraft:slabs aligned y run teleport @s ^ ^0.5 ^0.4 ~ ~
execute if entity @s[tag=fast] if block ~ ~ ~ #minecraft:slabs unless block ^ ^ ^0.4 minecraft:air unless block ^ ^ ^0.4 minecraft:comparator if block ^ ^0.5 ^0.4 minecraft:air run teleport @s ^ ^0.5 ^0.4 ~ ~
execute if entity @s[tag=fast] if block ~ ~ ~ #minecraft:slabs unless block ^ ^ ^0.4 minecraft:air unless block ^ ^ ^0.4 minecraft:comparator if block ^ ^0.5 ^0.4 minecraft:comparator run teleport @s ^ ^0.5 ^0.4 ~ ~
