execute unless entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add not_valid_tinpet
tellraw @s[tag=not_valid_tinpet] {"translate":"medabots_server:message.tinpet.not_valid"}
execute if entity @s[tag=!not_valid_tinpet,advancements={medabots_server:story_progression/infinity={opening=true,opening_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/opening
execute if entity @s[tag=!not_valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_koji=true,vs_koji_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/vs_koji
execute if entity @s[tag=!not_valid_tinpet,advancements={medabots_server:story_progression/infinity={vs_sloan=true,vs_sloan_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/vs_sloan
execute if entity @s[tag=!not_valid_tinpet,advancements={medabots_server:story_progression/infinity={gillgirls_jammy=true,gillgirls_jammy_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/gillgirls_jammy
execute if entity @s[tag=!not_valid_tinpet,advancements={medabots_server:story_progression/infinity={desperate_for_love=true,desperate_for_love_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/desperate_for_love
execute if entity @s[tag=!not_valid_tinpet,scores={KillStreak=1}] run function medabots_server:stage/try/woods_battle/story_battle/postgame_samantha
execute if entity @s[tag=!not_valid_tinpet,scores={KillStreak=2}] run function medabots_server:stage/try/woods_battle/story_battle/postgame_koji
execute if entity @s[tag=!not_valid_tinpet,scores={KillStreak=3}] run function medabots_server:stage/try/woods_battle/story_battle/postgame_director_tune
execute if entity @s[tag=!not_valid_tinpet,tag=!story_battle] run tellraw @s {"translate":"medabots_server:message.stage.no_story","color":"green"}
tag @s remove not_valid_tinpet
tag @s remove not_valid_ally_tinpet
execute if entity @s[tag=random_arena_version] unless entity @s[scores={Gamemode=0,State=1..3}] run function medabots_server:stage/sign/generic/arena_settings