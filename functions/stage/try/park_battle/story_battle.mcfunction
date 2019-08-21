execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:wave_1/story_progression={vs_samantha=true,vs_samantha_battle=false}}] run function medabots_server:stage/try/park_battle/story_battle/vs_samantha
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:wave_1/story_progression={vs_shrimplips=true,vs_shrimplips_battle=false}}] run function medabots_server:stage/try/park_battle/story_battle/vs_shrimplips
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:wave_1/story_progression={shrimplips_jammy=true,shrimplips_jammy_battle=false}}] run function medabots_server:stage/try/park_battle/story_battle/shrimplips_jammy
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:wave_1/story_progression={new_look_new_chances=true,new_look_new_chances_battle=false}}] run function medabots_server:stage/try/park_battle/story_battle/new_look_new_chances
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:wave_1/story_progression={vs_max=true,erikas_pass=false}}] run function medabots_server:stage/try/park_battle/story_battle/vs_max
execute if entity @s[tag=valid_tinpet,tag=!story_battle] run tellraw @s {"translate":"medabots_server:message.stage.no_story","color":"green"}
tellraw @s[tag=!valid_tinpet {"translate":"medabots_server:message.tinpet.not_valid"}
tag @s remove valid_tinpet