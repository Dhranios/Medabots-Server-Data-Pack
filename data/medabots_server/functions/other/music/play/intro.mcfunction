advancement grant @s[scores={MusicType=1},advancements={medabots_server:story_progression/infinity={victory=false}}] only medabots_server:special_items/jukebox/wave_0/map_overworld
advancement grant @s[scores={MusicType=1},advancements={medabots_server:story_progression/infinity={victory=true}}] only medabots_server:special_items/jukebox/wave_0/map_finished
playsound medabots_server:music.map_beach_intro music @s[scores={MusicType=2}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=2}] Music 145
advancement grant @s[scores={MusicType=2}] only medabots_server:special_items/jukebox/wave_0/map_beach
advancement grant @s[scores={MusicType=3}] only medabots_server:special_items/jukebox/wave_0/map_sea
playsound medabots_server:music.stage.selection_intro music @s[scores={MusicType=4}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=4}] Music 42
advancement grant @s[scores={MusicType=4}] only medabots_server:special_items/jukebox/wave_0/stage_selection
playsound medabots_server:music.stage.mt_battle.stage_intro music @s[scores={MusicType=5}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=5}] Music 91
advancement grant @s[scores={MusicType=5}] only medabots_server:special_items/jukebox/wave_0/mt_battle
playsound medabots_server:music.stage.fly_course_intro music @s[scores={MusicType=6}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=6}] Music 127
advancement grant @s[scores={MusicType=6}] only medabots_server:special_items/jukebox/wave_0/fly_course
advancement grant @s[scores={MusicType=7}] only medabots_server:special_items/jukebox/wave_1/grassland
playsound medabots_server:music.stage.rock_intro music @s[scores={MusicType=8}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=8}] Music 24
advancement grant @s[scores={MusicType=8}] only medabots_server:special_items/jukebox/wave_1/rock
advancement grant @s[scores={MusicType=9}] only medabots_server:special_items/jukebox/wave_1/jungle
advancement grant @s[scores={MusicType=10}] only medabots_server:special_items/jukebox/wave_1/seashore
advancement grant @s[scores={MusicType=11}] only medabots_server:special_items/jukebox/wave_1/snowfield
advancement grant @s[scores={MusicType=12}] only medabots_server:special_items/jukebox/wave_1/iceberg
advancement grant @s[scores={MusicType=13}] only medabots_server:special_items/jukebox/wave_1/ruins_out
advancement grant @s[scores={MusicType=14}] only medabots_server:special_items/jukebox/wave_1/ruins_in
playsound medabots_server:music.stage.laboratory_intro music @s[scores={MusicType=15}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=15}] Music 109
advancement grant @s[scores={MusicType=15}] only medabots_server:special_items/jukebox/wave_1/laboratory
playsound medabots_server:music.stage.park_intro music @s[scores={MusicType=16}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=16}] Music 160
advancement grant @s[scores={MusicType=16}] only medabots_server:special_items/jukebox/wave_1/park
advancement grant @s[scores={MusicType=17}] only medabots_server:special_items/jukebox/wave_1/paradise
advancement grant @s[scores={MusicType=18}] only medabots_server:special_items/jukebox/wave_1/under_stage
advancement grant @s[scores={MusicType=19}] only medabots_server:special_items/jukebox/wave_1/lagdou_ruins_outside
advancement grant @s[scores={MusicType=20}] only medabots_server:special_items/jukebox/wave_1/lagdou_ruins_inside
advancement grant @s[scores={MusicType=21}] only medabots_server:special_items/jukebox/wave_1/boxer
playsound medabots_server:music.map_underground_intro music @s[scores={MusicType=22}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=22}] Music 176
advancement grant @s[scores={MusicType=22}] only medabots_server:special_items/jukebox/wave_1/map_underground
advancement grant @s[scores={MusicType=23}] only medabots_server:special_items/jukebox/wave_1/lagdou_ruins_final
playsound medabots_server:music.stage.arena.ricco_harbor_intro music @s[scores={MusicType=24}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=24}] Music 30
advancement grant @s[scores={MusicType=24}] only medabots_server:special_items/jukebox/wave_1/ricco_harbor
advancement grant @s[scores={MusicType=25}] only medabots_server:special_items/jukebox/wave_1/ricco_harbor_removed
execute if entity @s[scores={MusicType=26}] run function medabots_server:other/music/play/intro_robattle
playsound medabots_server:music.battle.rubberobo_leader_intro music @s[scores={MusicType=27}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=27}] Music 90
advancement grant @s[scores={MusicType=27}] only medabots_server:special_items/jukebox/wave_1/rubberobo_leader
advancement grant @s[scores={MusicType=28}] only medabots_server:special_items/jukebox/wave_1/corruption_battle
advancement grant @s[scores={MusicType=29}] only medabots_server:special_items/jukebox/wave_1/under_battle
playsound medabots_server:music.edit_intro music @s[scores={MusicType=30}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=30}] Music 20
advancement grant @s[scores={MusicType=30}] only medabots_server:special_items/jukebox/wave_1/custom_stage
playsound medabots_server:music.medawatch_intro music @s[scores={MusicType=31}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=31}] Music 75
advancement grant @s[scores={MusicType=31}] only medabots_server:special_items/jukebox/wave_0/medawatch
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={MusicType=32}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=32}] Music 62
advancement grant @s[scores={MusicType=32}] only medabots_server:special_items/jukebox/wave_1/rubberobo
playsound medabots_server:music.entity.select_corps_intro music @s[scores={MusicType=33}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=33}] Music 70
advancement grant @s[scores={MusicType=33}] only medabots_server:special_items/jukebox/wave_1/select_corps
advancement grant @s[scores={MusicType=34}] only medabots_server:special_items/jukebox/wave_1/jammy
playsound medabots_server:music.entity.screws_intro music @s[scores={MusicType=35}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=35}] Music 62
advancement grant @s[scores={MusicType=35}] only medabots_server:special_items/jukebox/wave_1/screws
advancement grant @s[scores={MusicType=36}] only medabots_server:special_items/jukebox/wave_1/karin
advancement grant @s[scores={MusicType=37}] only medabots_server:special_items/jukebox/wave_1/erika
playsound medabots_server:music.entity.koji_intro music @s[scores={MusicType=38}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=38}] Music 136
advancement grant @s[scores={MusicType=38}] only medabots_server:special_items/jukebox/wave_1/koji
advancement grant @s[scores={MusicType=39}] only medabots_server:special_items/jukebox/wave_1/max
advancement grant @s[scores={MusicType=40}] only medabots_server:special_items/jukebox/wave_1/jaxy
advancement grant @s[scores={MusicType=41}] only medabots_server:special_items/jukebox/wave_1/jaxy_powerful
advancement grant @s[scores={MusicType=42}] only medabots_server:special_items/jukebox/wave_1/director_tune
advancement grant @s[scores={MusicType=43}] only medabots_server:special_items/jukebox/wave_1/doctor_haru
playsound medabots_server:music.entity.doctor_haru.evil_intro music @s[scores={MusicType=44}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=44}] Music 97
advancement grant @s[scores={MusicType=44}] only medabots_server:special_items/jukebox/wave_1/evil_haru
advancement grant @s[scores={MusicType=45}] only medabots_server:special_items/jukebox/wave_1/sad_haru
playsound medabots_server:music.entity.king_pharaoh_intro music @s[scores={MusicType=46}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=46}] Music 335
advancement grant @s[scores={MusicType=46}] only medabots_server:special_items/jukebox/wave_1/three_colors
advancement grant @s[scores={MusicType=47}] only medabots_server:special_items/jukebox/wave_1/intro
advancement grant @s[scores={MusicType=48}] only medabots_server:special_items/jukebox/wave_1/conspiracy
advancement grant @s[scores={MusicType=49}] only medabots_server:special_items/jukebox/wave_1/story
playsound medabots_server:music.map_welcome_underground_intro music @s[scores={MusicType=50}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=50}] Music 308
advancement grant @s[scores={MusicType=50}] only medabots_server:special_items/jukebox/wave_1/enter_the_underground
playsound medabots_server:music.stage.arena.final_destination_1_intro music @s[scores={MusicType=51}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=51}] Music 30
advancement grant @s[scores={MusicType=51}] only medabots_server:special_items/jukebox/wave_1/final_destination_1
playsound medabots_server:music.stage.boss.master_hand_1_intro music @s[scores={MusicType=52}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=52}] Music 452
advancement grant @s[scores={MusicType=52}] only medabots_server:special_items/jukebox/wave_1/master_hand_smash_bros
playsound medabots_server:music.stage.arena.final_destination_2_intro music @s[scores={MusicType=53}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=53}] Music 21
advancement grant @s[scores={MusicType=53}] only medabots_server:special_items/jukebox/wave_1/final_destination_2
playsound medabots_server:music.stage.boss.master_hand_and_crazy_hand_2_intro music @s[scores={MusicType=54}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=54}] Music 232
advancement grant @s[scores={MusicType=54}] only medabots_server:special_items/jukebox/wave_1/master_hand_smash_melee
advancement grant @s[scores={MusicType=55}] only medabots_server:special_items/jukebox/wave_1/boss_mae
advancement grant @s[scores={MusicType=56}] only medabots_server:special_items/jukebox/wave_0/mr_referee
playsound medabots_server:music.credits_intro music @s[scores={MusicType=57}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=57}] Music 454
advancement grant @s[scores={MusicType=57}] only medabots_server:special_items/jukebox/wave_0/credits
playsound medabots_server:music.stage.cleared_intro music @s[scores={MusicType=58}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=58}] Music 40
advancement grant @s[scores={MusicType=58}] only medabots_server:special_items/jukebox/wave_0/stage_cleared
playsound medabots_server:music.stage.failed_intro music @s[scores={MusicType=59}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=59}] Music 129
advancement grant @s[scores={MusicType=59}] only medabots_server:special_items/jukebox/wave_0/stage_failed
playsound medabots_server:music.stage.boss.master_hand_and_crazy_hand_3_intro music @s[scores={MusicType=60}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=60}] Music 173
advancement grant @s[scores={MusicType=60}] only medabots_server:special_items/jukebox/wave_1/master_hand_smash_brawl
advancement grant @s[scores={MusicType=61}] only medabots_server:special_items/jukebox/wave_1/master_hand_smash_4
playsound medabots_server:music.stage.arena.final_destination_3_intro music @s[scores={MusicType=62}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=62}] Music 119
advancement grant @s[scores={MusicType=62}] only medabots_server:special_items/jukebox/wave_1/final_destination_3
advancement grant @s[scores={MusicType=63}] only medabots_server:special_items/jukebox/wave_1/final_destination_4
playsound medabots_server:music.stage.subspace_1_intro music @s[scores={MusicType=64}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=64}] Music 40
advancement grant @s[scores={MusicType=64}] only medabots_server:special_items/jukebox/wave_1/subspace_1
playsound medabots_server:music.stage.subspace_2_intro music @s[scores={MusicType=65}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=65}] Music 82
advancement grant @s[scores={MusicType=65}] only medabots_server:special_items/jukebox/wave_1/subspace_2
playsound medabots_server:music.stage.subspace_3_intro music @s[scores={MusicType=66}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=66}] Music 255
advancement grant @s[scores={MusicType=66}] only medabots_server:special_items/jukebox/wave_1/subspace_3
playsound medabots_server:music.stage.boss.master_core_intro music @s[scores={MusicType=67}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=67}] Music 59
advancement grant @s[scores={MusicType=67}] only medabots_server:special_items/jukebox/wave_1/master_core
playsound medabots_server:music.stage.mt_battle_colosseum_intro music @s[scores={MusicType=68}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=68}] Music 80
advancement grant @s[scores={MusicType=68}] only medabots_server:special_items/jukebox/wave_0/mt_battle_colosseum
playsound medabots_server:music.stage.boss.topmaniac_intro music @s[scores={MusicType=69}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=69}] Music 55
advancement grant @s[scores={MusicType=69}] only medabots_server:special_items/jukebox/wave_1/topmaniac
playsound medabots_server:music.stage.boss.magolor_intro music @s[scores={MusicType=70}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=70}] Music 308
advancement grant @s[scores={MusicType=70}] only medabots_server:special_items/jukebox/wave_1/magolor
playsound medabots_server:music.stage.boss.magolor_soul_intro music @s[scores={MusicType=71}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=71}] Music 302
advancement grant @s[scores={MusicType=71}] only medabots_server:special_items/jukebox/wave_1/magolor_soul
playsound medabots_server:music.stage.boss.argorok_intro music @s[scores={MusicType=72}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=72}] Music 769
advancement grant @s[scores={MusicType=72}] only medabots_server:special_items/jukebox/wave_1/argorok
playsound medabots_server:music.stage.boss.galleom_1_intro music @s[scores={MusicType=73}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=73}] Music 190
advancement grant @s[scores={MusicType=73}] only medabots_server:special_items/jukebox/wave_1/galleom
playsound medabots_server:music.stage.boss.galleom_2_intro music @s[scores={MusicType=74}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=74}] Music 30
advancement grant @s[scores={MusicType=74}] only medabots_server:special_items/jukebox/wave_1/galleom_tank
playsound medabots_server:music.stage.boss.lor_starcutter_intro music @s[scores={MusicType=75}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=75}] Music 113
advancement grant @s[scores={MusicType=75}] only medabots_server:special_items/jukebox/wave_1/lor_starcutter
playsound medabots_server:music.stage.boss.hr_d3_intro music @s[scores={MusicType=76}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=76}] Music 124
advancement grant @s[scores={MusicType=76}] only medabots_server:special_items/jukebox/wave_1/hr_d3
advancement grant @s[scores={MusicType=77}] only medabots_server:special_items/jukebox/wave_0/showtime
playsound medabots_server:music.battle.dimentio_intro music @s[scores={MusicType=78}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=78}] Music 320
advancement grant @s[scores={MusicType=78}] only medabots_server:special_items/jukebox/wave_0/ultimate_show
playsound medabots_server:music.entity.dimentio_intro music @s[scores={MusicType=79}] ~ ~ ~ 1000
scoreboard players set @s[scores={MusicType=79}] Music 29
advancement grant @s[scores={MusicType=79}] only medabots_server:special_items/jukebox/wave_0/dimentio

scoreboard players operation @s[scores={Music=0}] PrevMusicType = @s MusicType