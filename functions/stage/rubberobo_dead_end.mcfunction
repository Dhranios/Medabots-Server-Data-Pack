tag @s[tag=walking] add downing
execute rotated ~ 0 if block ^ ^ ^0.6 minecraft:air if block ^ ^1 ^0.6 minecraft:air run tag @s remove downing
execute rotated ~ 0 if block ^-1 ^ ^ minecraft:air if block ^-1 ^1 ^ minecraft:air run tag @s remove downing
execute rotated ~ 0 if block ^1 ^ ^ minecraft:air if block ^1 ^1 ^ minecraft:air run tag @s remove downing
execute rotated ~ 0 if block ^ ^ ^0.6 minecraft:barrier if block ^ ^1 ^0.6 minecraft:barrier run tag @s remove downing
execute rotated ~ 0 if block ^-1 ^ ^ minecraft:barrier if block ^-1 ^1 ^ minecraft:barrier run tag @s remove downing
execute rotated ~ 0 if block ^1 ^ ^ minecraft:barrier if block ^1 ^1 ^ minecraft:barrier run tag @s remove downing

tag @s[tag=downing] add downed
execute if entity @s[tag=downing] run playsound medabots_server:entity.rubberobo.downing neutral @a ~ ~ ~ 1
tag @s[tag=downing] remove walking
scoreboard players set @s[tag=downing] Time 160
tag @s[tag=downing] remove downing