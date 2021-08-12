execute align xyz run tp @s ~ ~ ~
execute store result score $temp suso.ray run data get entity @s Pos[0] 1000
scoreboard players operation $x suso.ray /= #1000 suso.ray
execute if score $tdx suso.ray matches 0.. run function suso.ray:end/x
scoreboard players operation $x suso.ray += $temp suso.ray
execute store result score $temp suso.ray run data get entity @s Pos[1] 1000
scoreboard players operation $y suso.ray /= #1000 suso.ray
execute if score $tdy suso.ray matches 0.. run function suso.ray:end/y
scoreboard players operation $y suso.ray += $temp suso.ray
execute store result score $temp suso.ray run data get entity @s Pos[2] 1000
scoreboard players operation $z suso.ray /= #1000 suso.ray
execute if score $tdz suso.ray matches 0.. run function suso.ray:end/z
scoreboard players operation $z suso.ray += $temp suso.ray

execute store result entity @s Pos[0] double 0.001 run scoreboard players get $x suso.ray
execute store result entity @s Pos[1] double 0.001 run scoreboard players get $y suso.ray
execute store result entity @s Pos[2] double 0.001 run scoreboard players get $z suso.ray

execute at @s run particle minecraft:dust 0 1 1 1 ~ ~ ~ 0 0 0 0 1 force
tp @s 29999984 0 27115040