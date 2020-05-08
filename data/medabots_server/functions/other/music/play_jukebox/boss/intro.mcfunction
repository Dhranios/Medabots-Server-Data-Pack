playsound medabots_server:music.stage.boss.master_hand_1_intro music @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/master_hand_1=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/master_hand_1=true}] Music 452
playsound medabots_server:music.stage.boss.master_hand_and_crazy_hand_2_intro music @s[scores={Jukebox=2},advancements={medabots_server:special_items/jukebox/master_hand_2=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=2},advancements={medabots_server:special_items/jukebox/master_hand_2=true}] Music 222
playsound medabots_server:music.stage.boss.master_hand_and_crazy_hand_3_intro music @s[scores={Jukebox=3},advancements={medabots_server:special_items/jukebox/master_hand_3=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=3},advancements={medabots_server:special_items/jukebox/master_hand_3=true}] Music 173
playsound medabots_server:music.stage.boss.master_core_intro music @s[scores={Jukebox=5},advancements={medabots_server:special_items/jukebox/master_core=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=5},advancements={medabots_server:special_items/jukebox/master_core=true}] Music 59

scoreboard players operation @s[scores={Music=0},advancements={medabots_server:special_items/jukebox/=true}] PrevJukebox = @s Jukebox