# Challenge 1

A 3-tier environment is a common setup. Use a tool of your choosing/familiarity create these resources. Please remember we will not be judged on the outcome but more focusing on the approach, style and reproducibility.

Solution- Implemented 3 tier architecture with the help of terraform.There are 5 modules of Compute,Database,Network,resourceGroup,NetworkSecurityGroup. And in the main.tf file, I have called those 5 modules to create a 3-tier architecture.

# Challenge 2

We need to write code that will query the meta data of an instance within AWS and provide a json formatted output. The choice of language and implementation is up to you.
Bonus Points
The code allows for a particular data key to be retrieved individually

Solution- The API can be accessed using tools that send GET requests (e.g., curl on *nix-based systems, or Invoke-RestMethod in PowerShell on Windows) to an address. The latest API version can be invoked by sending a GET request to the following URI:http://169.254.169.254/latest/

I hae used powershell to get the metadata of AWS instance.

# Challenge 3

We have a nested object, we would like a function that you pass in the object and a key and get back the value. How this is implemented is up to you.

Solution- I have used JavaScript and Python script to solve this challenge.

