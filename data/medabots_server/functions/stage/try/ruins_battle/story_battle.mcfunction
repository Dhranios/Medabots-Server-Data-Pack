execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_squidguts=true,vs_squidguts_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_squidguts
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_seaslug=true,vs_seaslug_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_seaslug
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:story_progression/infinity={motivated_fight=true,motivated_fight_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/motivated_fight
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_screws=true,vs_screws_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_screws
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_jaxy=true,vs_jaxy_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_jaxy
execute if entity @s[tag=valid_tinpet,scores={KillStreak=1}] run function medabots_server:stage/try/ruins_battle/story_battle/postgame_spyke
execute if entity @s[tag=valid_tinpet,scores={KillStreak=2}] run function medabots_server:stage/try/ruins_battle/story_battle/postgame_jaxy
execute if entity @s[tag=valid_tinpet,scores={KillStreak=3}] run function medabots_server:stage/try/ruins_battle/story_battle/postgame_doctor_haru
execute if entity @s[tag=valid_tinpet,tag=!story_battle] run tellraw @s {"translate":"medabots_server:message.stage.no_story","color":"green"}
tellraw @s[tag=!valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
tag @s remove valid_tinpet