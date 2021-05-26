for i in 0 1 2 3; do
  nohup python train.py --img 1920 --batch 16 --epochs 100 --data $SCRATCH/yolov5/data/spaghetti.yaml --cfg $SCRATCH/yolov5/models/yolov5l.yaml --weights "" --cache --evolve --device $i > evolve_gpu_$i.log &
done