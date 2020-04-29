execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[tag=has_medabot_form] run function medabots_server:items/player_interactions/medabot/revert
teleport @s[scores={Dialog=0},gamemode=adventure] -1659 37 -142 90 0
execute if entity @s[scores={Dialog=0},gamemode=adventure] run data merge block -1674 52 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/jungle_a/enter"}}'}
execute if entity @s[scores={Dialog=0},gamemode=adventure] run setblock -1674 53 -181 minecraft:red_wool
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={Dialog=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] MusicType 4
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] Stage 3
scoreboard players set @s[scores={Dialog=0},gamemode=adventure] Gamemode 0
execute if entity @s[scores={Dialog=0},gamemode=adventure] run function medabots_server:stage/sign/generic/stage_settings
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}