data merge entity @s[scores={DeathTime=1}] {Pose:{Head:[90.0f,0.0f,0.0f]}}
execute at @s[scores={DeathTime=1}] run teleport @s ^ ^-1 ^
execute if entity @s[scores={DeathTime=1},tag=chest] run playsound medabots_server:entity.medabot.death.crushed player @a ~ ~ ~ 0.7