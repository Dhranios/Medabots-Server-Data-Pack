execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add not_valid_tinpet
tellraw @s[tag=not_valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
execute if entity @s[tag=!not_valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_squidguts=true,vs_squidguts_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_squidguts
execute if entity @s[tag=!not_valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_seaslug=true,vs_seaslug_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_seaslug
execute if entity @s[tag=!not_valid_tinpet,advancements={medabots_server:story_progression/infinity={motivated_fight=true,motivated_fight_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/motivated_fight
execute if entity @s[tag=!not_valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_screws=true,vs_screws_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_screws
execute if entity @s[tag=!not_valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_jaxy=true,vs_jaxy_battle=false}}] run function medabots_server:stage/try/ruins_battle/story_battle/vs_jaxy
execute if entity @s[tag=!not_valid_tinpet,scores={KillStreak=1}] run function medabots_server:stage/try/ruins_battle/story_battle/postgame_spyke
execute if entity @s[tag=!not_valid_tinpet,scores={KillStreak=2}] run function medabots_server:stage/try/ruins_battle/story_battle/postgame_jaxy
execute if entity @s[tag=!not_valid_tinpet,scores={KillStreak=3}] run function medabots_server:stage/try/ruins_battle/story_battle/postgame_doctor_haru
execute if entity @s[tag=!not_valid_tinpet,tag=!story_battle] run tellraw @s {"translate":"medabots_server:message.stage.no_story","color":"green"}
tag @s remove not_valid_tinpet
tag @s remove not_valid_ally_tinpet
execute if entity @s[tag=random_arena_version] unless entity @s[scores={Gamemode=0,State=1..3}] run function medabots_server:stage/sign/generic/arena_settings