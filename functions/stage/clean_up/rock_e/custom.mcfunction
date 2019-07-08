bossbar set medabots_server:rock_e/time players
tag @e[scores={Stage=53},type=!minecraft:player] add dead
data merge block -1861 52 -345 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/rock_e/play"}}'}
setblock -1861 53 -347 minecraft:redstone_block