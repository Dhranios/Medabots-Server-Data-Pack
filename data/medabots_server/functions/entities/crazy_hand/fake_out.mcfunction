scoreboard players add @s Time 1
tag @s[scores={Time=1}] remove idle
tag @s[scores={Time=2}] add fake_out

teleport @s[scores={Time=1..3}] ~ ~2 ~
execute if entity @s[scores={Time=4..45}] facing entity @e[tag=target,limit=1] feet rotated ~ 0 positioned ~-1 0 ~-1 unless entity @e[tag=target,limit=1,dx=1,dz=1,dy=255] positioned as @s run teleport @s ^ ^ ^0.4 ~ 0

teleport @s[scores={Time=59..60}] ~ ~-3.5 ~
execute if entity @s[scores={Time=59..61}] run effect give @e[tag=potential_target,distance=..3] minecraft:instant_damage 1 2 true
execute if entity @s[scores={Time=59..60}] as @e[tag=potential_target,distance=..3] positioned as @s if block ~ ~-1 ~ minecraft:air if block ~ ~-2 ~ minecraft:air if block ~ ~-3 ~ minecraft:air run teleport @s ~ ~-3 ~
execute if entity @s[scores={Time=55}] run playsound medabots_server:entity.crazy_hand.fake_out hostile @a ~ ~-3 ~ 1
execute if entity @s[scores={Time=60}] run playsound medabots_server:entity.crazy_hand.fake_out_land hostile @a ~ ~-3 ~ 1

teleport @s[scores={Time=80}] ~ ~1 ~
execute if entity @s[scores={Time=87}] run playsound medabots_server:entity.crazy_hand.hard_hit hostile @a ~ ~ ~ 1
execute if entity @s[scores={Time=97}] run playsound medabots_server:entity.crazy_hand.hard_hit hostile @a ~ ~ ~ 1
teleport @s[scores={Time=110}] ~ ~-1 ~

tag @s[scores={Time=110}] add idle
tag @s[scores={Time=110}] remove fake_out
tag @s[scores={Time=110}] remove has_target
tag @s[scores={Time=110}] remove attack_fake_out
scoreboard players set @s[scores={Time=110}] Time 0