execute if entity @s[advancements={medabots_server:wave_1/story={vs_spyke=true,vs_spyke_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle/vs_spyke
execute if entity @s[tag=!story_battle] run tellraw @s {"translate":"medabots_server:message.stage.no_story","color":"green"}
