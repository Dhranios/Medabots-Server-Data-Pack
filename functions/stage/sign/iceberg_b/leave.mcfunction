teleport @s -1795 50 -419 -180 0
data merge block -1796 51 -435 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_b/play"}}'}
setblock -1796 52 -437 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1