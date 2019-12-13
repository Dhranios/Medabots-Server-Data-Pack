advancement grant @s[scores={MusicType=1},advancements={medabots_server:story_progression/infinity={victory=false}}] only medabots_server:special_items/jukebox/map_overworld
advancement grant @s[scores={MusicType=1},advancements={medabots_server:story_progression/infinity={victory=true}}] only medabots_server:special_items/jukebox/map_finished
playsound medabots_server:music.map_beach_intro music @s[scores={MusicType=2}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=2}] Music 145
advancement grant @s[scores={MusicType=2}] only medabots_server:special_items/jukebox/map_beach
advancement grant @s[scores={MusicType=3}] only medabots_server:special_items/jukebox/map_sea
playsound medabots_server:music.stage.selection_intro music @s[scores={MusicType=4}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=4}] Music 42
advancement grant @s[scores={MusicType=4}] only medabots_server:special_items/jukebox/stage_selection
playsound medabots_server:music.stage.mt_battle.stage_intro music @s[scores={MusicType=5}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=5}] Music 91
advancement grant @s[scores={MusicType=5}] only medabots_server:special_items/jukebox/mt_battle
playsound medabots_server:music.stage.fly_course_intro music @s[scores={MusicType=6}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=6}] Music 127
advancement grant @s[scores={MusicType=6}] only medabots_server:special_items/jukebox/fly_course
advancement grant @s[scores={MusicType=7}] only medabots_server:special_items/jukebox/grassland
playsound medabots_server:music.stage.rock_intro music @s[scores={MusicType=8}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=8}] Music 24
advancement grant @s[scores={MusicType=8}] only medabots_server:special_items/jukebox/rock
advancement grant @s[scores={MusicType=9}] only medabots_server:special_items/jukebox/jungle
advancement grant @s[scores={MusicType=10}] only medabots_server:special_items/jukebox/seashore
advancement grant @s[scores={MusicType=11}] only medabots_server:special_items/jukebox/snowfield
advancement grant @s[scores={MusicType=12}] only medabots_server:special_items/jukebox/iceberg
advancement grant @s[scores={MusicType=13}] only medabots_server:special_items/jukebox/ruins_out
advancement grant @s[scores={MusicType=14}] only medabots_server:special_items/jukebox/ruins_in
playsound medabots_server:music.stage.laboratory_intro music @s[scores={MusicType=15}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=15}] Music 109
advancement grant @s[scores={MusicType=15}] only medabots_server:special_items/jukebox/laboratory
playsound medabots_server:music.stage.park_intro music @s[scores={MusicType=16}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=16}] Music 160
advancement grant @s[scores={MusicType=16}] only medabots_server:special_items/jukebox/park
advancement grant @s[scores={MusicType=17}] only medabots_server:special_items/jukebox/paradise
advancement grant @s[scores={MusicType=18}] only medabots_server:special_items/jukebox/under_stage
advancement grant @s[scores={MusicType=19}] only medabots_server:special_items/jukebox/lagdou_ruins_outside
advancement grant @s[scores={MusicType=20}] only medabots_server:special_items/jukebox/lagdou_ruins_inside
advancement grant @s[scores={MusicType=21}] only medabots_server:special_items/jukebox/boxer
playsound medabots_server:music.map_underground_intro music @s[scores={MusicType=22}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=22}] Music 176
advancement grant @s[scores={MusicType=22}] only medabots_server:special_items/jukebox/map_underground
advancement grant @s[scores={MusicType=23}] only medabots_server:special_items/jukebox/lagdou_ruins_final
playsound medabots_server:music.stage.pvp.ricco_harbor_intro music @s[scores={MusicType=24}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=24}] Music 30
advancement grant @s[scores={MusicType=24}] only medabots_server:special_items/jukebox/ricco_harbor
advancement grant @s[scores={MusicType=25}] only medabots_server:special_items/jukebox/ricco_harbor_removed
execute if entity @s[scores={MusicType=26}] run function medabots_server:other/music/play/intro_robattle
playsound medabots_server:music.battle.rubberobo_leader_intro music @s[scores={MusicType=27}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=27}] Music 90
advancement grant @s[scores={MusicType=27}] only medabots_server:special_items/jukebox/rubberobo_leader
advancement grant @s[scores={MusicType=28}] only medabots_server:special_items/jukebox/corruption_battle
advancement grant @s[scores={MusicType=29}] only medabots_server:special_items/jukebox/under_battle
playsound medabots_server:music.edit_intro music @s[scores={MusicType=30}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=30}] Music 20
advancement grant @s[scores={MusicType=30}] only medabots_server:special_items/jukebox/custom_stage
playsound medabots_server:music.medawatch_intro music @s[scores={MusicType=31}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=31}] Music 75
advancement grant @s[scores={MusicType=31}] only medabots_server:special_items/jukebox/medawatch
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={MusicType=32}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=32}] Music 62
advancement grant @s[scores={MusicType=32}] only medabots_server:special_items/jukebox/rubberobo
playsound medabots_server:music.entity.select_corps_intro music @s[scores={MusicType=33}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=33}] Music 70
advancement grant @s[scores={MusicType=33}] only medabots_server:special_items/jukebox/select_corps
advancement grant @s[scores={MusicType=34}] only medabots_server:special_items/jukebox/jammy
playsound medabots_server:music.entity.screws_intro music @s[scores={MusicType=35}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=35}] Music 62
advancement grant @s[scores={MusicType=35}] only medabots_server:special_items/jukebox/screws
advancement grant @s[scores={MusicType=36}] only medabots_server:special_items/jukebox/karin
advancement grant @s[scores={MusicType=37}] only medabots_server:special_items/jukebox/erika
playsound medabots_server:music.entity.koji_intro music @s[scores={MusicType=38}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=38}] Music 136
advancement grant @s[scores={MusicType=38}] only medabots_server:special_items/jukebox/koji
advancement grant @s[scores={MusicType=39}] only medabots_server:special_items/jukebox/max
advancement grant @s[scores={MusicType=40}] only medabots_server:special_items/jukebox/jaxy
advancement grant @s[scores={MusicType=41}] only medabots_server:special_items/jukebox/jaxy_powerful
advancement grant @s[scores={MusicType=42}] only medabots_server:special_items/jukebox/director_tune
advancement grant @s[scores={MusicType=43}] only medabots_server:special_items/jukebox/doctor_haru
playsound medabots_server:music.entity.doctor_haru.evil_intro music @s[scores={MusicType=44}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=44}] Music 97
advancement grant @s[scores={MusicType=44}] only medabots_server:special_items/jukebox/evil_haru
advancement grant @s[scores={MusicType=45}] only medabots_server:special_items/jukebox/sad_haru
playsound medabots_server:music.entity.king_pharaoh_intro music @s[scores={MusicType=46}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=46}] Music 335
advancement grant @s[scores={MusicType=46}] only medabots_server:special_items/jukebox/three_colors
advancement grant @s[scores={MusicType=47}] only medabots_server:special_items/jukebox/intro
advancement grant @s[scores={MusicType=48}] only medabots_server:special_items/jukebox/conspiracy
advancement grant @s[scores={MusicType=49}] only medabots_server:special_items/jukebox/story
playsound medabots_server:music.map_welcome_underground_intro music @s[scores={MusicType=50}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=50}] Music 308
advancement grant @s[scores={MusicType=50}] only medabots_server:special_items/jukebox/enter_the_underground
playsound medabots_server:music.stage.pvp.final_destination_1_intro music @s[scores={MusicType=51}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=51}] Music 30
advancement grant @s[scores={MusicType=51}] only medabots_server:special_items/jukebox/final_destination_1
playsound medabots_server:music.stage.boss.master_hand_1_intro music @s[scores={MusicType=52}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=52}] Music 452
advancement grant @s[scores={MusicType=52}] only medabots_server:special_items/jukebox/master_hand_1
playsound medabots_server:music.stage.pvp.final_destination_2_intro music @s[scores={MusicType=53}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=53}] Music 21
advancement grant @s[scores={MusicType=53}] only medabots_server:special_items/jukebox/final_destination_2
playsound medabots_server:music.stage.boss.master_hand_and_crazy_hand_2_intro music @s[scores={MusicType=54}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=54}] Music 222
advancement grant @s[scores={MusicType=54}] only medabots_server:special_items/jukebox/master_hand_2
advancement grant @s[scores={MusicType=55}] only medabots_server:special_items/jukebox/boss_mae
advancement grant @s[scores={MusicType=56}] only medabots_server:special_items/jukebox/mr_referee
playsound medabots_server:music.credits_intro music @s[scores={MusicType=57}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=57}] Music 454
advancement grant @s[scores={MusicType=57}] only medabots_server:special_items/jukebox/credits
playsound medabots_server:music.stage.cleared_intro music @s[scores={MusicType=58}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=58}] Music 40
advancement grant @s[scores={MusicType=58}] only medabots_server:special_items/jukebox/stage_cleared
playsound medabots_server:music.stage.failed_intro music @s[scores={MusicType=59}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=59}] Music 129
advancement grant @s[scores={MusicType=59}] only medabots_server:special_items/jukebox/stage_failed

scoreboard players operation @s[scores={Music=0}] PrevMusicType = @s MusicType