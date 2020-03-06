scoreboard players add @s[tag=dying] DeathTime 1
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={DeathTime=1..19}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 50
data modify entity @s[scores={DeathTime=20}] Pose.Head[0] set value 90f
scoreboard players reset #temp Time
execute at @s run teleport @s[scores={DeathTime=1}] ^ ^ ^-0.1
execute at @s run teleport @s[scores={DeathTime=1..10}] ~ ~0.7 ~
execute at @s run teleport @s[scores={DeathTime=11..19}] ~ ~-0.7 ~
execute at @s run teleport @s[scores={DeathTime=20..40}] ~ ~-0.2 ~
tag @s[scores={DeathTime=40}] add dead