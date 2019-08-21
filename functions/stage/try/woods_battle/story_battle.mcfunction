execute if entity @s[nbt={SelectedItem:{tag:{medabots_server:{part:"tinpet",items:{medal:{tag:{medabots_server:{part:"medal"}}},head:{tag:{medabots_server:{part:"head"}}},right_arm:{tag:{medabots_server:{part:"right_arm"}}},left_arm:{tag:{medabots_server:{part:"left_arm"}}},legs:{tag:{medabots_server:{part:"legs"}}}}}}}}] run tag @s add valid_tinpet
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:wave_1/story_progression={opening=true,opening_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/opening
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:wave_1/story_progression={vs_koji=true,vs_koji_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/vs_koji
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:wave_1/story_progression={vs_sloan=true,vs_sloan_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/vs_sloan
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:wave_1/story_progression={gillgirls_jammy=true,gillgirls_jammy_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/gillgirls_jammy
execute if entity @s[tag=valid_tinpet,advancements={medabots_server:wave_1/story_progression={desperate_for_love=true,desperate_for_love_battle=false}}] run function medabots_server:stage/try/woods_battle/story_battle/desperate_for_love
execute if entity @s[tag=valid_tinpet,tag=!story_battle] run tellraw @s {"translate":"medabots_server:message.stage.no_story","color":"green"}
tellraw @s[tag=!valid_tinpet {"translate":"medabots_server:message.tinpet.not_valid"}
tag @s remove valid_tinpet