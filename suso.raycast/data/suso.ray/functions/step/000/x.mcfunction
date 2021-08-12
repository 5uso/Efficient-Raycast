function suso.ray:move/x
execute if score $step suso.ray < $limit suso.ray if block ~ ~ ~ #suso.ray:ray run function suso.ray:step/000/do
execute if score $end suso.ray matches 0 run function suso.ray:end/do