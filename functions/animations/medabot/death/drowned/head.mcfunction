data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[-60.0f,0.0f,0.0f]}}
execute at @s[scores={DeathTime=1}] run teleport @s ^ ^ ^
execute if entity @s[scores={DeathTime=1},tag=chest] run playsound medabots_server:entity.medabot.death.drowned player @a ~ ~ ~ 0.7
execute at @s[scores={DeathTime=2..60}] run teleport @s ^ ^-0.021 ^