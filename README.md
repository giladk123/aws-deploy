# aws-deploy
create spot instance request on aws using spot-instance.json and following command : 

aws ec2 request-spot-instances --spot-price "0.0125" --instance-count 1 --type "one-time" --launch-specification file://spot-instances.json

Parameters:

--instance-count <number of instances you want to deploy>


--type "<one-time|persistent>"

  
