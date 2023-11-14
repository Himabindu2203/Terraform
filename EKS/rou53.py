import boto3
import requests
requests.urllib3.disable_warnings()
 
# Specify the AWS profile names configured in your AWS CLI configuration
aws_profile_names = ['devopssit', 'HMNO-Devops', 'sit', 'uat']
 
# Iterate through profiles
for aws_profile_name in aws_profile_names:
    # Create an AWS session for the current profile
    session = boto3.Session(profile_name=aws_profile_name)
 
    # Create an AWS Route 53 client using the current session
    route53 = session.client('route53', verify=False)
 
    # Retrieve hosted zones
    response = route53.list_hosted_zones()
 
    # Iterate through hosted zones
    for hosted_zone in response['HostedZones']:
        hosted_zone_id = hosted_zone['Id'].split("/")[-1]  # Extract hosted zone ID
        tags_response = route53.list_tags_for_resource(ResourceType='hostedzone', ResourceId=hosted_zone_id)
        tags = tags_response.get('ResourceTagSet', {}).get('Tags', [])
 
        # Count tags and print information for the hosted zone
        tag_count = len(tags)
        print(f"Profile: {aws_profile_name}")
        print(f"Hosted Zone ID: {hosted_zone_id}")
        print(f"Tag Count: {tag_count}")
 
        if tag_count > 0:
            print("Tags:")
            for tag in tags:
                print(f"  {tag['Key']}: {tag['Value']}")
        else:
            print("No tags found.")
 
        print()
