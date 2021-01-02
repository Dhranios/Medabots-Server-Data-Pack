scoreboard players add @s AnimationProg 1
data merge entity @s[scores={AnimationProg=1}] {Pose:{LeftArm:[0.001f,0.001f,0.001f],RightArm:[0.001f,0.001f,0.001f]}}
tag @s[scores={AnimationProg=20}] remove attack
scoreboard players set @s[scores={AnimationProg=20..}] AnimationProg 0