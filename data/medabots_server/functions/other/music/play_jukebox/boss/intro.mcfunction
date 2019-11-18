playsound medabots_server:music.stage.boss.master_hand_1_intro music @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/master_hand_1=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/master_hand_1=true}] Music 452
playsound medabots_server:music.stage.boss.master_hand_and_crazy_hand_2_intro music @s[scores={Jukebox=2},advancements={medabots_server:special_items/jukebox/master_hand_2=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=2},advancements={medabots_server:special_items/jukebox/master_hand_2=true}] Music 222

scoreboard players operation @s[scores={Music=0},advancements={medabots_server:special_items/jukebox/=true}] PrevJukebox = @s Jukebox