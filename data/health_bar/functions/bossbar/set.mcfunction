$execute store result bossbar health_bar:player.$(id0).$(id1).$(id2).$(id3) max run attribute @s generic.max_health get 100
$execute store result bossbar health_bar:player.$(id0).$(id1).$(id2).$(id3) value run data get entity @s Health 100
execute store result score $h health_bar run data get entity @s Health 10
scoreboard players operation $h0 health_bar = $h health_bar
scoreboard players operation $h0 health_bar /= $10 health_bar
scoreboard players operation $h1 health_bar = $h health_bar
scoreboard players operation $h1 health_bar %= $10 health_bar
$execute if score $h1 health_bar matches 0 run bossbar set health_bar:player.$(id0).$(id1).$(id2).$(id3) name [{"selector":"@s"}," - §c♥",{"score":{"objective":"health_bar","name":"$h0"}}]
$execute if score $h1 health_bar matches 1.. run bossbar set health_bar:player.$(id0).$(id1).$(id2).$(id3) name [{"selector":"@s"}," - §c♥",{"score":{"objective":"health_bar","name":"$h0"}},".",{"score":{"objective":"health_bar","name":"$h1"}}]