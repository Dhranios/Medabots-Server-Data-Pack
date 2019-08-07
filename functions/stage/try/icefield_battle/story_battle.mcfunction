execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_spyke=true,vs_spyke_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle/vs_spyke
execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_gillgirl=true,vs_gillgirl_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle/vs_gillgirl
execute if entity @s[advancements={medabots_server:wave_1/story_progression={squidguts_jammy=true,squidguts_jammy_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle/squidguts_jammy
execute if entity @s[advancements={medabots_server:wave_1/story_progression={vs_karin=true,vs_karin_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle/vs_karin
execute if entity @s[tag=!story_battle] run tellraw @s {"translate":"medabots_server:message.stage.no_story","color":"green"}
