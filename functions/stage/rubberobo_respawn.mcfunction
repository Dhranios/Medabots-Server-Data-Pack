execute if entity @s run playsound medabots_server:entity.rubberobo.respawn neutral @a ~ ~2 ~
teleport @s ~ ~2 ~
data merge entity @s {NoGravity:0b,Invulnerable:0b}
tag @s remove respawning