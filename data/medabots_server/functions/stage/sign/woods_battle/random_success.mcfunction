data merge block 22 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/woods_battle/enter"}}'}
setblock 22 61 -2 minecraft:air
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s[scores={State=3}] MusicType 4