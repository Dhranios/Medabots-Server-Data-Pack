# Transfer power, if bound
execute unless entity @s[scores={HomeX=0,HomeY=0,HomeZ=0,PowerAmount=0}] run function medabots_server:blocks/bound_object

# Reset own power
scoreboard players set @s PowerAmount 0