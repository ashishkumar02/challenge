# Complete metadata in json

$metadatainfo= Invoke-RestMethod http://169.254.169.254/latest/meta-data

Write-Host $metadatainfo


#The code allows for a particular data key to be retrieved individually

$InstanceProfileArn = $(Invoke-RestMethod http://169.254.169.254/latest/meta-data/iam/info).InstanceProfileArn            
Write-Host $InstanceProfileArn

