# Move to spectator area
execute if entity @s[scores={Stage=1}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=1,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_a/custom
execute if entity @s[scores={Stage=1,StageVersion=1}] unless entity @e[scores={Stage=1,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_a/first_go
execute if entity @s[scores={Stage=1,StageVersion=2}] unless entity @e[scores={Stage=1,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_a/second_go
execute if entity @s[scores={Stage=1,StageVersion=3}] unless entity @e[scores={Stage=1,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_a/rubberobo
execute if entity @s[scores={Stage=1,StageVersion=4}] unless entity @e[scores={Stage=1,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_a/special
execute if entity @s[scores={Stage=1,StageVersion=5}] unless entity @e[scores={Stage=1,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_a/object_test
execute if entity @s[scores={Stage=2}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=2,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/rock_a/custom
execute if entity @s[scores={Stage=2,StageVersion=1}] unless entity @e[scores={Stage=2,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/rock_a/first_go
execute if entity @s[scores={Stage=2,StageVersion=2}] unless entity @e[scores={Stage=2,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/rock_a/second_go
execute if entity @s[scores={Stage=2,StageVersion=3}] unless entity @e[scores={Stage=2,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/rock_a/rubberobo
execute if entity @s[scores={Stage=3}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=3,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_a/custom
execute if entity @s[scores={Stage=3,StageVersion=1}] unless entity @e[scores={Stage=3,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_a/first_go
execute if entity @s[scores={Stage=3,StageVersion=2}] unless entity @e[scores={Stage=3,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_a/second_go
execute if entity @s[scores={Stage=3,StageVersion=3}] unless entity @e[scores={Stage=3,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_a/rubberobo
execute if entity @s[scores={Stage=4}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=4,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_a/custom
execute if entity @s[scores={Stage=4,StageVersion=1}] unless entity @e[scores={Stage=4,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_a/first_go
execute if entity @s[scores={Stage=4,StageVersion=2}] unless entity @e[scores={Stage=4,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_a/second_go
execute if entity @s[scores={Stage=4,StageVersion=3}] unless entity @e[scores={Stage=4,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_a/rubberobo
execute if entity @s[scores={Stage=5}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=5,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_a/custom
execute if entity @s[scores={Stage=5,StageVersion=1}] unless entity @e[scores={Stage=5,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_a/first_go
execute if entity @s[scores={Stage=5,StageVersion=2}] unless entity @e[scores={Stage=5,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_a/second_go
execute if entity @s[scores={Stage=5,StageVersion=3}] unless entity @e[scores={Stage=5,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_a/rubberobo
execute if entity @s[scores={Stage=6}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=6,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_a/custom
execute if entity @s[scores={Stage=6,StageVersion=1}] unless entity @e[scores={Stage=6,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_a/first_go
execute if entity @s[scores={Stage=6,StageVersion=2}] unless entity @e[scores={Stage=6,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_a/second_go
execute if entity @s[scores={Stage=6,StageVersion=3}] unless entity @e[scores={Stage=6,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_a/rubberobo
execute if entity @s[scores={Stage=7}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=7,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_a/custom
execute if entity @s[scores={Stage=7,StageVersion=1}] unless entity @e[scores={Stage=7,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_a/first_go
execute if entity @s[scores={Stage=7,StageVersion=2}] unless entity @e[scores={Stage=7,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_a/second_go
execute if entity @s[scores={Stage=7,StageVersion=3}] unless entity @e[scores={Stage=7,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_a/rubberobo
execute if entity @s[scores={Stage=8}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=8,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_in_a/custom
execute if entity @s[scores={Stage=8,StageVersion=1}] unless entity @e[scores={Stage=8,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_in_a/first_go
execute if entity @s[scores={Stage=8,StageVersion=2}] unless entity @e[scores={Stage=8,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_in_a/second_go
execute if entity @s[scores={Stage=8,StageVersion=3}] unless entity @e[scores={Stage=8,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_in_a/rubberobo
execute if entity @s[scores={Stage=9}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=9,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_a/custom
execute if entity @s[scores={Stage=9,StageVersion=1}] unless entity @e[scores={Stage=9,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_a/first_go
execute if entity @s[scores={Stage=9,StageVersion=2}] unless entity @e[scores={Stage=9,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_a/second_go
execute if entity @s[scores={Stage=9,StageVersion=3}] unless entity @e[scores={Stage=9,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_a/rubberobo
execute if entity @s[scores={Stage=10}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=10,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_b/custom
execute if entity @s[scores={Stage=10,StageVersion=1}] unless entity @e[scores={Stage=10,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_b/first_go
execute if entity @s[scores={Stage=10,StageVersion=2}] unless entity @e[scores={Stage=10,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_b/second_go
execute if entity @s[scores={Stage=11}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=11,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/rock_b/custom
execute if entity @s[scores={Stage=11,StageVersion=1}] unless entity @e[scores={Stage=11,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/rock_b/first_go
execute if entity @s[scores={Stage=11,StageVersion=2}] unless entity @e[scores={Stage=11,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/rock_b/second_go
execute if entity @s[scores={Stage=11,StageVersion=3}] unless entity @e[scores={Stage=11,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/rock_b/rubberobo
execute if entity @s[scores={Stage=12}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=12,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_b/custom
execute if entity @s[scores={Stage=12,StageVersion=1}] unless entity @e[scores={Stage=12,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_b/first_go
execute if entity @s[scores={Stage=12,StageVersion=2}] unless entity @e[scores={Stage=12,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_b/second_go
execute if entity @s[scores={Stage=12,StageVersion=3}] unless entity @e[scores={Stage=12,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_b/rubberobo
execute if entity @s[scores={Stage=13}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=13,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_b/custom
execute if entity @s[scores={Stage=13,StageVersion=1}] unless entity @e[scores={Stage=13,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_b/first_go
execute if entity @s[scores={Stage=13,StageVersion=2}] unless entity @e[scores={Stage=13,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_b/second_go
execute if entity @s[scores={Stage=13,StageVersion=3}] unless entity @e[scores={Stage=13,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_b/rubberobo
execute if entity @s[scores={Stage=13,StageVersion=4}] unless entity @e[scores={Stage=13,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_b/special
execute if entity @s[scores={Stage=14}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=14,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_b/custom
execute if entity @s[scores={Stage=14,StageVersion=1}] unless entity @e[scores={Stage=14,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_b/first_go
execute if entity @s[scores={Stage=14,StageVersion=2}] unless entity @e[scores={Stage=14,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_b/second_go
execute if entity @s[scores={Stage=14,StageVersion=3}] unless entity @e[scores={Stage=14,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_b/rubberobo
execute if entity @s[scores={Stage=14,StageVersion=4}] unless entity @e[scores={Stage=14,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_b/special
execute if entity @s[scores={Stage=14,StageVersion=5}] unless entity @e[scores={Stage=14,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_b/sloan_challenge
execute if entity @s[scores={Stage=15}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=15,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_b/custom
execute if entity @s[scores={Stage=15,StageVersion=1}] unless entity @e[scores={Stage=15,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_b/first_go
execute if entity @s[scores={Stage=15,StageVersion=2}] unless entity @e[scores={Stage=15,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_b/second_go
execute if entity @s[scores={Stage=16}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=16,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_b/custom
execute if entity @s[scores={Stage=16,StageVersion=1}] unless entity @e[scores={Stage=16,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_b/first_go
execute if entity @s[scores={Stage=16,StageVersion=2}] unless entity @e[scores={Stage=16,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_b/second_go
execute if entity @s[scores={Stage=16,StageVersion=3}] unless entity @e[scores={Stage=16,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_b/rubberobo
execute if entity @s[scores={Stage=16,StageVersion=4}] unless entity @e[scores={Stage=16,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_b/special
execute if entity @s[scores={Stage=17}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=17,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_in_b/custom
execute if entity @s[scores={Stage=17,StageVersion=1}] unless entity @e[scores={Stage=17,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_in_b/first_go
execute if entity @s[scores={Stage=17,StageVersion=2}] unless entity @e[scores={Stage=17,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_in_b/second_go
execute if entity @s[scores={Stage=17,StageVersion=3}] unless entity @e[scores={Stage=17,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_in_b/rubberobo
execute if entity @s[scores={Stage=18}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=18,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_b/custom
execute if entity @s[scores={Stage=18,StageVersion=1}] unless entity @e[scores={Stage=18,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_b/first_go
execute if entity @s[scores={Stage=18,StageVersion=2}] unless entity @e[scores={Stage=18,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_b/second_go
execute if entity @s[scores={Stage=18,StageVersion=3}] unless entity @e[scores={Stage=18,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_b/rubberobo
execute if entity @s[scores={Stage=18,StageVersion=4}] unless entity @e[scores={Stage=18,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_b/special
execute if entity @s[scores={Stage=19}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=19,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_a/custom
execute if entity @s[scores={Stage=19,StageVersion=1}] unless entity @e[scores={Stage=19,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_a/first_go
execute if entity @s[scores={Stage=19,StageVersion=2}] unless entity @e[scores={Stage=19,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_a/second_go
execute if entity @s[scores={Stage=19,StageVersion=3}] unless entity @e[scores={Stage=19,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_a/special
execute if entity @s[scores={Stage=20}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=20,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_b/custom
execute if entity @s[scores={Stage=20,StageVersion=1}] unless entity @e[scores={Stage=20,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_b/first_go
execute if entity @s[scores={Stage=20,StageVersion=2}] unless entity @e[scores={Stage=20,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_b/second_go
execute if entity @s[scores={Stage=21}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=21,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/paradise_a/custom
execute if entity @s[scores={Stage=21,StageVersion=1}] unless entity @e[scores={Stage=21,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/paradise_a/first_go
execute if entity @s[scores={Stage=21,StageVersion=2}] unless entity @e[scores={Stage=21,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/paradise_a/second_go
execute if entity @s[scores={Stage=22}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=22,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/paradise_b/custom
execute if entity @s[scores={Stage=22,StageVersion=1}] unless entity @e[scores={Stage=22,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/paradise_b/first_go
execute if entity @s[scores={Stage=22,StageVersion=2}] unless entity @e[scores={Stage=22,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/paradise_b/second_go
execute if entity @s[scores={Stage=23}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=23,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_c/custom
execute if entity @s[scores={Stage=23,StageVersion=1}] unless entity @e[scores={Stage=23,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_c/first_go
execute if entity @s[scores={Stage=23,StageVersion=2}] unless entity @e[scores={Stage=23,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_c/second_go
execute if entity @s[scores={Stage=24}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=24,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_c/custom
execute if entity @s[scores={Stage=24,StageVersion=1}] unless entity @e[scores={Stage=24,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_c/first_go
execute if entity @s[scores={Stage=24,StageVersion=2}] unless entity @e[scores={Stage=24,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_c/second_go
execute if entity @s[scores={Stage=25}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=25,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_c/custom
execute if entity @s[scores={Stage=25,StageVersion=1}] unless entity @e[scores={Stage=25,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_c/first_go
execute if entity @s[scores={Stage=25,StageVersion=2}] unless entity @e[scores={Stage=25,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_c/second_go
execute if entity @s[scores={Stage=26}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=26,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_c/custom
execute if entity @s[scores={Stage=26,StageVersion=1}] unless entity @e[scores={Stage=26,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_c/first_go
execute if entity @s[scores={Stage=26,StageVersion=2}] unless entity @e[scores={Stage=26,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_c/second_go
execute if entity @s[scores={Stage=27}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=27,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_c/custom
execute if entity @s[scores={Stage=27,StageVersion=1}] unless entity @e[scores={Stage=27,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_c/first_go
execute if entity @s[scores={Stage=27,StageVersion=2}] unless entity @e[scores={Stage=27,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_c/second_go
execute if entity @s[scores={Stage=28}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=28,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_c/custom
execute if entity @s[scores={Stage=28,StageVersion=1}] unless entity @e[scores={Stage=28,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_c/first_go
execute if entity @s[scores={Stage=28,StageVersion=2}] unless entity @e[scores={Stage=28,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_c/second_go
execute if entity @s[scores={Stage=29}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=29,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/boxer/custom
execute if entity @s[scores={Stage=29,StageVersion=1}] unless entity @e[scores={Stage=29,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/boxer/first_go
execute if entity @s[scores={Stage=29,StageVersion=2}] unless entity @e[scores={Stage=29,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/boxer/second_go
execute if entity @s[scores={Stage=30}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=30,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_d/custom
execute if entity @s[scores={Stage=30,StageVersion=1}] unless entity @e[scores={Stage=30,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_d/first_go
execute if entity @s[scores={Stage=31}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=31,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_d/custom
execute if entity @s[scores={Stage=31,StageVersion=1}] unless entity @e[scores={Stage=31,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_d/first_go
execute if entity @s[scores={Stage=32}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=32,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_d/custom
execute if entity @s[scores={Stage=32,StageVersion=1}] unless entity @e[scores={Stage=32,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_d/first_go
execute if entity @s[scores={Stage=33}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=33,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_d/custom
execute if entity @s[scores={Stage=33,StageVersion=1}] unless entity @e[scores={Stage=33,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_d/first_go
execute if entity @s[scores={Stage=34}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=34,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_in_d/custom
execute if entity @s[scores={Stage=34,StageVersion=1}] unless entity @e[scores={Stage=34,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_in_d/first_go
execute if entity @s[scores={Stage=35}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=35,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_d/custom
execute if entity @s[scores={Stage=35,StageVersion=1}] unless entity @e[scores={Stage=35,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/laboratory_d/first_go
execute if entity @s[scores={Stage=36,StageVersion=1}] unless entity @e[scores={Stage=36,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_1/empty
execute if entity @s[scores={Stage=37,StageVersion=1}] unless entity @e[scores={Stage=37,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_2/empty
execute if entity @s[scores={Stage=38,StageVersion=1}] unless entity @e[scores={Stage=38,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_3/empty
execute if entity @s[scores={Stage=39,StageVersion=1}] unless entity @e[scores={Stage=39,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_4/empty
execute if entity @s[scores={Stage=39,StageVersion=2}] unless entity @e[scores={Stage=39,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_4/darkness
execute if entity @s[scores={Stage=40,StageVersion=1}] unless entity @e[scores={Stage=40,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_5/empty
execute if entity @s[scores={Stage=40,StageVersion=2}] unless entity @e[scores={Stage=40,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_5/darkness
execute if entity @s[scores={Stage=41,StageVersion=1}] unless entity @e[scores={Stage=41,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_6/empty
execute if entity @s[scores={Stage=41,StageVersion=2}] unless entity @e[scores={Stage=41,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_6/darkness
execute if entity @s[scores={Stage=42,StageVersion=1}] unless entity @e[scores={Stage=42,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_7/empty
execute if entity @s[scores={Stage=42,StageVersion=2}] unless entity @e[scores={Stage=42,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_7/darkness
execute if entity @s[scores={Stage=43,StageVersion=1}] unless entity @e[scores={Stage=43,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_8/empty
execute if entity @s[scores={Stage=43,StageVersion=2}] unless entity @e[scores={Stage=43,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_8/darkness
execute if entity @s[scores={Stage=44,StageVersion=1}] unless entity @e[scores={Stage=44,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_9/empty
execute if entity @s[scores={Stage=44,StageVersion=2}] unless entity @e[scores={Stage=44,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_9/darkness
execute if entity @s[scores={Stage=45,StageVersion=1}] unless entity @e[scores={Stage=45,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/lagdou_ruins_10/empty
execute if entity @s[scores={Stage=46,StageVersion=1}] unless entity @e[scores={Stage=46,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ricco_harbor/empty
execute if entity @s[scores={Stage=47,StageVersion=1}] unless entity @e[scores={Stage=47,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/woods_battle/stones
execute if entity @s[scores={Stage=47,StageVersion=2}] unless entity @e[scores={Stage=47,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/woods_battle/action_floors_1
execute if entity @s[scores={Stage=47,StageVersion=3}] unless entity @e[scores={Stage=47,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/woods_battle/action_floors_2
execute if entity @s[scores={Stage=47,StageVersion=4}] unless entity @e[scores={Stage=47,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/woods_battle/balloon_bombs
execute if entity @s[scores={Stage=47,StageVersion=5}] unless entity @e[scores={Stage=47,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/woods_battle/accelerators
execute if entity @s[scores={Stage=47,StageVersion=6}] unless entity @e[scores={Stage=47,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/woods_battle/lasers
execute if entity @s[scores={Stage=47,StageVersion=7}] unless entity @e[scores={Stage=47,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/woods_battle/cannons
execute if entity @s[scores={Stage=47,StageVersion=8}] unless entity @e[scores={Stage=47,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/woods_battle/empty
execute if entity @s[scores={Stage=48,StageVersion=1}] unless entity @e[scores={Stage=48,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/icefield_battle/balloon_bombs
execute if entity @s[scores={Stage=48,StageVersion=2}] unless entity @e[scores={Stage=48,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/icefield_battle/mirrors
execute if entity @s[scores={Stage=48,StageVersion=3}] unless entity @e[scores={Stage=48,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/icefield_battle/cannons
execute if entity @s[scores={Stage=48,StageVersion=4}] unless entity @e[scores={Stage=48,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/icefield_battle/locked_out
execute if entity @s[scores={Stage=48,StageVersion=5}] unless entity @e[scores={Stage=48,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/icefield_battle/accelerators
execute if entity @s[scores={Stage=48,StageVersion=6}] unless entity @e[scores={Stage=48,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/icefield_battle/ice_blocks
execute if entity @s[scores={Stage=48,StageVersion=7}] unless entity @e[scores={Stage=48,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/icefield_battle/spring_walls
execute if entity @s[scores={Stage=48,StageVersion=8}] unless entity @e[scores={Stage=48,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/icefield_battle/empty
execute if entity @s[scores={Stage=49,StageVersion=1}] unless entity @e[scores={Stage=49,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_battle/walls
execute if entity @s[scores={Stage=49,StageVersion=2}] unless entity @e[scores={Stage=49,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_battle/wind
execute if entity @s[scores={Stage=49,StageVersion=3}] unless entity @e[scores={Stage=49,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_battle/cannons
execute if entity @s[scores={Stage=49,StageVersion=4}] unless entity @e[scores={Stage=49,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_battle/accelerators
execute if entity @s[scores={Stage=49,StageVersion=5}] unless entity @e[scores={Stage=49,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_battle/lasers
execute if entity @s[scores={Stage=49,StageVersion=6}] unless entity @e[scores={Stage=49,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_battle/hammer_punches
execute if entity @s[scores={Stage=49,StageVersion=7}] unless entity @e[scores={Stage=49,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_battle/locked_in
execute if entity @s[scores={Stage=49,StageVersion=8}] unless entity @e[scores={Stage=49,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_battle/empty
execute if entity @s[scores={Stage=50,StageVersion=1}] unless entity @e[scores={Stage=50,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_battle/cannons_1
execute if entity @s[scores={Stage=50,StageVersion=2}] unless entity @e[scores={Stage=50,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_battle/walls
execute if entity @s[scores={Stage=50,StageVersion=3}] unless entity @e[scores={Stage=50,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_battle/accelerators
execute if entity @s[scores={Stage=50,StageVersion=4}] unless entity @e[scores={Stage=50,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_battle/wind_1
execute if entity @s[scores={Stage=50,StageVersion=5}] unless entity @e[scores={Stage=50,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_battle/cannons_2
execute if entity @s[scores={Stage=50,StageVersion=6}] unless entity @e[scores={Stage=50,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_battle/balloon_bombs
execute if entity @s[scores={Stage=50,StageVersion=7}] unless entity @e[scores={Stage=50,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_battle/action_floors
execute if entity @s[scores={Stage=50,StageVersion=8}] unless entity @e[scores={Stage=50,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/park_battle/wind_2
execute if entity @s[scores={Stage=51}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=51,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/mt_battle/player
execute if entity @s[scores={Stage=51,StageVersion=1}] unless entity @e[scores={Stage=51,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/mt_battle/wave_1
execute if entity @s[scores={Stage=52}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=52,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/grassland_e/custom
execute if entity @s[scores={Stage=53}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=53,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/rock_e/custom
execute if entity @s[scores={Stage=54}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=54,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/jungle_e/custom
execute if entity @s[scores={Stage=55}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=55,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/seashore_e/custom
execute if entity @s[scores={Stage=56}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=56,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/snowfield_e/custom
execute if entity @s[scores={Stage=57}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=57,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/iceberg_e/custom
execute if entity @s[scores={Stage=58}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=58,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_out_e/custom
execute if entity @s[scores={Stage=59}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=59,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/ruins_in_e/custom
execute if entity @s[scores={Stage=60}] unless entity @s[scores={StageVersion=1..}] unless entity @e[scores={Stage=60,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/rock_f/custom
execute if entity @s[scores={Stage=61,StageVersion=1}] unless entity @e[scores={Stage=61,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/final_destination_1/empty
execute if entity @s[scores={Stage=62,StageVersion=1}] unless entity @e[scores={Stage=62,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/final_destination_2/empty
execute if entity @s[scores={Stage=63,StageVersion=1}] unless entity @e[scores={Stage=63,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/final_destination_3/empty
execute if entity @s[scores={Stage=64,StageVersion=1}] unless entity @e[scores={Stage=64,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/final_destination_4/empty
execute if entity @s[scores={Stage=65,StageVersion=1}] unless entity @e[scores={Stage=65,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/subspace_1/empty
execute if entity @s[scores={Stage=66,StageVersion=1}] unless entity @e[scores={Stage=66,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/subspace_2/empty
execute if entity @s[scores={Stage=67,StageVersion=1}] unless entity @e[scores={Stage=67,Battle=1..2},tag=enemy_medabot] run function medabots_server:stage/leave_stage/subspace_3/empty

# Is in combat, so kill instead
execute if entity @s[scores={Battle=1..2}] run function medabots_server:other/kill