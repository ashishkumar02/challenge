
# Challenge #2

We need to write code that will query the meta data of an instance within AWS and provide a json formatted output. The choice of language and implementation is up to you.


What is EC2 Instance Metadata?
--------------------------------
From the documentation, “Instance metadata is data about your instance that you can use to configure or manage the running instance.” This includes information like the instance ID, public and private IP addresses, current IAM role, security groups, account ID, region, and more! All this information can easily be gathered by invoking a REST API local and is unique to the instance itself.


Solution-
----------------

We are using PowerShell script to fetch the output. Below are the 2 ways- 
1. One is which will give metadata output in jason format.
2. Fetching particular data key to retrieved individually

````
PS > Invoke-RestMethod http://169.254.169.254/latest/meta-data

```

In PowerShell, Invoke-RestMethod returns the JSON object and turns it into a native PowerShell object. If you were to store this data in a variable, you could reference attributes.

Bonus-
-----------
The code allows for a particular data key to be retrieved individually.With PowerShell, the Invoke-RestMethod returns a native PSObject from the JSON in which we can select certain attributes to output the desired value.Example-

```
PS > $region = $(Invoke-RestMethod http://169.254.169.254/latest/dynamic/instance-identity/document).region
PS > Write-Host $region

Output- us-east-1

```