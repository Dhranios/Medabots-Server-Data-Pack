bossbar set medabots_server:snowfield_b/time players
tag @e[scores={Stage=14},type=!minecraft:player] add dead
data merge block -1716 52 -538 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_b/play"}}'}
setblock -1716 53 -540 minecraft:redstone_block