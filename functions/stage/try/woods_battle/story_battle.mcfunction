execute if entity @s[advancements={medabots_server:wave_1/story_progression={opening=true,opening_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/opening
execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_koji=true,vs_koji_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/vs_koji
execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_sloan=true,vs_sloan_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/vs_sloan
execute if entity @s[tag=!story_battle] run tellraw @s {"translate":"medabots_server:message.stage.no_story","color":"green"}