fill -1955 44 -247 -1861 44 -152 minecraft:air replace minecraft:barrier
bossbar set medabots_server:jungle_e/time players
tag @e[scores={Stage=54},type=!minecraft:player] add dead
data merge block -1909 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_e/play"}}'}
setblock -1909 53 -249 minecraft:redstone_block