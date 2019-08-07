execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_squidguts=true,vs_squidguts_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_squidguts
execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_seaslug=true,vs_seaslug_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_seaslug
execute if entity @s[advancements={medabots_server:wave_1/story_progression={motivated_fight=true,motivated_fight_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/motivated_fight
execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_screws=true,vs_screws_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_screws
execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_jaxy=true,vs_jaxy_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_jaxy
execute if entity @s[tag=!story_battle] run tellraw @s {"translate":"medabots_server:message.stage.no_story","color":"green"}
