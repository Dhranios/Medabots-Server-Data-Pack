scoreboard players add @s[tag=dying] DeathTime 1
execute at @s run teleport @s[scores={DeathTime=20..40}] ~ ~-0.2 ~
tag @s[scores={DeathTime=40}] add dead