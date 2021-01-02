data merge block 29 61 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_3/enter"}}'}
setblock 29 62 -2 minecraft:air
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s[scores={State=3}] MusicType 4