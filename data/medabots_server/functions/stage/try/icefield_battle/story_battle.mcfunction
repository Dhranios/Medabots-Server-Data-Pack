execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_spyke=true,vs_spyke_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle/vs_spyke
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_gillgirl=true,vs_gillgirl_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle/vs_gillgirl
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:story_progression/infinity={squidguts_jammy=true,squidguts_jammy_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle/squidguts_jammy
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_karin=true,vs_karin_battle=false}}] run function medabots_server:stage/try/icefield_battle/story_battle/vs_karin
execute if entity @s[tag=valid_tinpet,scores={KillStreak=1}] run function medabots_server:stage/try/icefield_battle/story_battle/postgame_sloan
execute if entity @s[tag=valid_tinpet,scores={KillStreak=2}] run function medabots_server:stage/try/icefield_battle/story_battle/postgame_karin
execute if entity @s[tag=valid_tinpet,tag=!story_battle] run tellraw @s {"translate":"medabots_server:message.stage.no_story","color":"green"}
tellraw @s[tag=!valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
tag @s remove valid_tinpet