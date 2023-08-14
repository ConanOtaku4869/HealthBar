$execute unless entity @e[type=#health_bar:target,tag=!health_bar.player,distance=..$(distance)] run function health_bar:bossbar/invisible with storage health_bar: args
$execute unless entity @e[type=#health_bar:target,tag=!health_bar.player,distance=..$(distance)] run return 0
function health_bar:bossbar/visible with storage health_bar: args
$execute as @e[type=#health_bar:target,tag=!health_bar.player,distance=..$(distance),sort=nearest,limit=1] run function health_bar:bossbar/set with storage health_bar: args