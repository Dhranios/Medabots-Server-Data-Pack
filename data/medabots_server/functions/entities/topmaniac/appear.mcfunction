scoreboard players add @s Time 1
effect give @s minecraft:resistance 1 9 true
teleport @s[scores={Time=1}] ^ ^30 ^
teleport @s[scores={Time=3..12}] ^0.5 ^-0.5 ^
teleport @s[scores={Time=13..32}] ^1 ^-0.5 ^
teleport @s[scores={Time=33..52}] ^-1 ^-0.5 ^
teleport @s[scores={Time=53..58}] ^-0.5 ^-0.5 ^
teleport @s[scores={Time=59..66}] ^-0.25 ^-0.25 ^
scoreboard players set @s[scores={Time=70}] State 4
execute at @s[scores={Time=71..75}] run teleport @s ~ ~0.2 ~
execute at @s[scores={Time=76..80}] run teleport @s ~ ~-0.2 ~
scoreboard players set @s[scores={Time=80}] State 1

tag @s[scores={Time=80}] add idle
tag @s[scores={Time=80}] add appeared
scoreboard players set @s[scores={Time=80}] Time 0