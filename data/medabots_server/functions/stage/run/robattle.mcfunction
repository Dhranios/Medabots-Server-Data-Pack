tag @e[tag=mr_referee,type=minecraft:armor_stand,tag=finished,distance=..30,limit=1] add me
execute at @e[type=minecraft:armor_stand,tag=me,limit=1] store result score @s BattlingMedabots if entity @a[scores={Stage=0},tag=medabot,distance=..30]
execute at @e[type=minecraft:armor_stand,tag=me,limit=1] as @a[scores={Stage=0},tag=practice_battle,distance=..30] run tag @a[scores={Stage=0},tag=medabot,distance=..30] add practice_robattle

execute at @e[type=minecraft:armor_stand,tag=me,limit=1] as @a[scores={Stage=0},tag=medabot,distance=20.1..27] at @s facing entity @e[type=minecraft:armor_stand,tag=me,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^1
execute at @e[type=minecraft:armor_stand,tag=me,limit=1] run scoreboard players set @a[scores={Stage=0},tag=medabot,distance=27.1..30] HeadArmor 0

execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clean_up/robattle
execute if entity @s[scores={BattlingMedabots=1,State=1..}] run function medabots_server:stage/clear
scoreboard players reset @s[scores={BattlingMedabots=1..}] BattlingMedabots
tag @e[tag=me,limit=1] remove me