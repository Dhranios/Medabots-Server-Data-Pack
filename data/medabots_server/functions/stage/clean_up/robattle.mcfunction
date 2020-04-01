tag @e[tag=mr_referee,type=minecraft:armor_stand,tag=finished,distance=..30,limit=1] add me
tag @s add me
execute at @e[type=minecraft:armor_stand,tag=me,limit=1] run scoreboard players set @a[scores={Stage=0},tag=medabot,distance=..30,tag=!me] Music 0
execute at @e[type=minecraft:armor_stand,tag=me,limit=1] run scoreboard players set @a[scores={Stage=0},tag=medabot,distance=..30,tag=!me] MusicType 0
execute at @e[type=minecraft:armor_stand,tag=me,limit=1] run scoreboard players set @a[scores={Stage=0},tag=medabot,distance=..30,tag=!me] State 0
execute at @e[type=minecraft:armor_stand,tag=me,limit=1] run scoreboard players set @s[scores={Stage=0,State=0},distance=..30] Music 0
execute at @e[type=minecraft:armor_stand,tag=me,limit=1] run scoreboard players set @s[scores={Stage=0,State=0},distance=..30] MusicType 0
execute at @e[type=minecraft:armor_stand,tag=me,limit=1] run scoreboard players set @s[scores={Stage=0,State=0},distance=..30] State 0
execute at @e[type=minecraft:armor_stand,tag=me,limit=1] run scoreboard players reset @a[scores={Stage=0},distance=..30,tag=!me] StageVersion
execute at @e[type=minecraft:armor_stand,tag=me,limit=1] run scoreboard players reset @a[scores={Stage=0},distance=..30,tag=!me] Stage
tag @e[scores={Stage=0},type=minecraft:armor_stand,tag=me,limit=1] add dead
tag @s remove me