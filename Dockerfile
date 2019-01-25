FROM siwatinc/nodejsubuntu_base_image
RUN apt-get -y install ffmpeg
RUN npm install -g h265ize
CMD script --return 
-c "h265ize 
-v $extra 
-m '$preset' 
-d $output 
-q $qp 
-f '$format' 
--as-preset $aspreset
--debug $debug
--stats $stats
#--delete
$input" /dev/null
