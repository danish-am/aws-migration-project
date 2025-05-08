import subprocess
import boto3

# AWS region
region = "us-east-1"

# Tag to filter instances
tag_key = "Name"
tag_values = ["web1", "web2"]  # Update if your instance names are different

ec2 = boto3.client('ec2', region_name=region)

# Get instances with matching tags
response = ec2.describe_instances(
    Filters=[
        {'Name': f'tag:{tag_key}', 'Values': tag_values}
    ]
)

instances = []
for reservation in response['Reservations']:
    for instance in reservation['Instances']:
        instance_id = instance['InstanceId']
        name = None
        for tag in instance.get('Tags', []):
            if tag['Key'] == 'Name':
                name = tag['Value']
        if name:
            instances.append((name, instance_id))

# Import each instance into Terraform
for name, instance_id in instances:
    terraform_address = f'aws_instance.ec2["{name}"]'
    print(f"Importing EC2 → {terraform_address} → {instance_id}")
    cmd = ["terraform", "import", terraform_address, instance_id]
    subprocess.run(cmd)

