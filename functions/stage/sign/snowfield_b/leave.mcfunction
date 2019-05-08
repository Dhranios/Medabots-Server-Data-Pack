teleport @s -1715 51 -492 -180 0
data merge block -1716 52 -538 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_b/play"}}'}
setblock -1716 53 -540 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1