# destroy if older than 12 ticks
scoreboard players add @e[type=minecraft:armor_stand,tag=destroy] LifeTime 1
kill @e[type=minecraft:armor_stand,tag=destroy,scores={LifeTime=12}]