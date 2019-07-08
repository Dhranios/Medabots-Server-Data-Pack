bossbar set medabots_server:rock_f/time players
tag @e[scores={Stage=60},type=!minecraft:player] add dead
data merge block -1891 52 -696 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/rock_f/play"}}'}
setblock -1891 53 -698 minecraft:redstone_block