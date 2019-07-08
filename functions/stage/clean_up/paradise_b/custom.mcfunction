bossbar set medabots_server:paradise_b/time players
tag @e[scores={Stage=22},type=!minecraft:player] add dead
data merge block -1635 52 -637 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/paradise_b/play"}}'}
setblock -1635 53 -639 minecraft:redstone_block