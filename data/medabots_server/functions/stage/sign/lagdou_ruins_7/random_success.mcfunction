data merge block 30 59 42 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_7/enter"}}'}
setblock 30 60 40 minecraft:air
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s[scores={State=3}] MusicType 4