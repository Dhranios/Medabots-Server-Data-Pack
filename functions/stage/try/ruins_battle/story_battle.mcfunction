execute if entity @s[advancements={medabots_server:wave_1/story={vs_squidguts=true,vs_squidguts_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_squidguts
execute if entity @s[tag=!story_battle] run tellraw @s {"translate":"medabots_server:message.stage.no_story","color":"green"}
