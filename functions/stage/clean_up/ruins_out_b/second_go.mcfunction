setblock -1650 47 -482 minecraft:air
setblock -1650 46 -482 minecraft:wall_torch[facing=west]
setblock -1659 47 -504 minecraft:air
setblock -1659 46 -504 minecraft:wall_torch[facing=south]
setblock -1650 47 -493 minecraft:air
setblock -1650 46 -493 minecraft:wall_torch[facing=west]
setblock -1656 47 -504 minecraft:air
setblock -1656 46 -504 minecraft:wall_torch[facing=south]
bossbar set medabots_server:ruins_out_b/time players
bossbar set medabots_server:ruins_out_b/robattle players
scoreboard players set @a[scores={Stage=16}] Music 0
scoreboard players set @a[scores={Stage=16}] MusicType 1
scoreboard players set @a[scores={Stage=16}] Battle 0
teleport @a[scores={Stage=16}] -1812 51 -489 -180 0
tag @e[scores={Stage=16},type=!minecraft:player] add dead
data merge block -1813 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_b/play"}}'}
setblock -1813 53 -538 minecraft:redstone_block