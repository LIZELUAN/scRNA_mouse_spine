path=$(cd `dirname $0` && pwd)
aggrid=SM22-8W-1_aggr
mkdir ../cellr_out2   # Your output dir for each sample
cd ../cellr_out2 
(bash $path/run1.sh >$path/run1.log 2>&1) &
(bash $path/run2.sh >$path/run2.log 2>&1) &
wait
(bash $path/run3.sh >$path/run3.log 2>&1) &
(bash $path/run4.sh >$path/run4.log 2>&1) &
wait
cd ../ # Come to the output dir for aggr
cellranger aggr --id=$aggrid --csv=$path/aggr.csv --normalize=mapped --nosecondary
wait

if [ $(find $aggrid | wc -l) -gt 0 ]
then
echo "finished!!!"
fi

