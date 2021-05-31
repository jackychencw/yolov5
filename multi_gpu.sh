for i in 0 1 2 3; do
  nohup python train.py --img 1920 --batch 8 --epochs 100 --data ./data/spaghetti.yaml --hyp ./data/hyp.scratch.yaml --cfg ./models/yolov5l.yaml --weights "" --cache --evolve --device $i > evolve_gpu_$i.log &
done