execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
execute if entity @s[tag=has_medabot_form] run function medabots_server:items/player_interactions/medabot/revert
teleport @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] 25 45 26 90 0
execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run data merge block 22 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/woods_battle/enter"}}'}
execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run setblock 22 61 -2 minecraft:air
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] Music 0
scoreboard players set @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] MusicType 4
scoreboard players set @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] Stage 47
scoreboard players set @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] Gamemode 0
execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/arena_settings
execute if entity @s[advancements={medabots_server:story_progression/infinity={opening=true,opening_battle=false}},scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_koji=true,vs_koji_battle=false}},scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={vs_sloan=true,vs_sloan_battle=false}},scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={gillgirls_jammy=true,gillgirls_jammy_battle=false}},scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[advancements={medabots_server:story_progression/infinity={desperate_for_love=true,desperate_for_love_battle=false}},scores={Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
execute if entity @s[scores={KillStreak=1..3,Dialog=0},gamemode=adventure,tag=!random_arena_version] run function medabots_server:stage/sign/generic/story_battle
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}

execute if entity @s[scores={Dialog=0},gamemode=adventure,tag=random_arena_version] run function medabots_server:stage/sign/woods_battle/random_story