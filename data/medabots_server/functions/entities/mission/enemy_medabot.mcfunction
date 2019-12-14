execute at @s run tag @e[distance=..0.7,tag=enemy_medabot] add me

scoreboard players operation #temp Stage = @s Stage
scoreboard players operation #temp StageIndex = @s StageIndex

execute as @a[tag=enemy_medabot,scores={Battle=3}] if score @s Stage = #temp Stage if score @s StageIndex = #temp StageIndex run tag @s add spawning_medabot
teleport @a[tag=spawning_medabot,limit=1] ~ ~ ~
effect give @a[tag=spawning_medabot,limit=1] minecraft:night_vision 2 0 true
effect give @a[tag=spawning_medabot,limit=1] minecraft:blindness 2 0 true
scoreboard players set @a[tag=spawning_medabot,limit=1] Battle 2

execute unless entity @a[tag=spawning_medabot,limit=1] run tellraw @a[tag=building_player,tag=!vs_cpus] {"translate":"medabots_server:message.stage.player.left","color":"green"}
execute unless entity @a[tag=spawning_medabot,limit=1] run summon minecraft:item ~ ~ ~ {Tags:["spawn_medabot"],Rotation:[0.0f,0.0f],Item:{id:"minecraft:fishing_rod",Count:1b}}
execute unless entity @a[tag=spawning_medabot,limit=1] run data modify entity @e[distance=..0.7,tag=spawn_medabot,limit=1] Item merge from entity @e[tag=me,type=minecraft:armor_stand,limit=1] ArmorItems[3]

scoreboard players reset #temp Stage
scoreboard players reset #temp StageIndex
tag @a[tag=spawning_medabot,limit=1] remove spawning_medabot

kill @e[tag=me,type=minecraft:armor_stand,limit=1]
kill @e[tag=goal_area,tag=new,limit=1]