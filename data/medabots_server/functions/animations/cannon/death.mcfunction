scoreboard players add @s[tag=dying] DeathTime 1
execute if entity @s[scores={DeathTime=1}] run playsound medabots_server:entity.cannon.death hostile @a ~ ~ ~ 1
data merge entity @s[scores={DeathTime=1}] {AbsorptionAmount:1000000.0f}
execute if entity @s[scores={DeathTime=1}] run loot spawn ~ ~ ~ kill @s
execute if entity @s[scores={DeathTime=1}] run summon minecraft:experience_orb ~ ~ ~ {Value:1s}
execute if entity @s[scores={DeathTime=1}] as @e[distance=..1] unless entity @s[type=!minecraft:item,type=!minecraft:experience_orb] run data merge entity @s {Invulnerable:1b}
execute if entity @s[scores={DeathTime=1}] run teleport @s ~ ~-5 ~
execute if entity @s[scores={DeathTime=1}] run scoreboard players operation #temp CannonNr = @s CannonNr
execute if entity @s[scores={DeathTime=1}] as @e[tag=cannon_blockade,type=minecraft:shulker] if score @s CannonNr = #temp CannonNr run data merge entity @s {AbsorptionAmount:0.0f,Health:0.0f,DeathTime:19s}
execute if entity @s[scores={DeathTime=1}] run scoreboard players reset #temp CannonNr
execute if entity @s[scores={DeathTime=40}] run particle minecraft:cloud ~ ~5 ~ 1 0 1 0 30
tag @s[scores={DeathTime=40}] add dead
execute if entity @s[scores={DeathTime=40,ActionFloorNr=0..}] run function medabots_server:blocks/action_floor/reenable_spawning