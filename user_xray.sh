#/bin/bash
files=$(aws iam list-users --query "Users[*].UserName" | tr -d "[], " | sed 's/"//g')
for i in ${files[@]}; do
    access_keys=$(aws iam list-access-keys --user-name $i --query "AccessKeyMetadata[*].{UserName:UserName,AccessKeyId:AccessKeyId,Status:Status,CreateDate:CreateDate}" --output table)
    user_groups=$(aws iam list-groups-for-user --user-name $i --query 'Groups[*].GroupName' --output table)
    user_attached_policies=$(aws iam list-attached-user-policies --user-name $i --query 'AttachedPolicies[*].PolicyArn' --output table)
    user_policies=$(aws iam list-user-policies --user-name $i)
    echo "----------\n"
    echo "USER: $i\n"
    echo "$access_keys"
    echo "$user_groups"
    echo "$user_attached_policies"

    #Uncomment this to describe each user policie
    #   describe_policies=$(aws iam list-attached-user-policies --user-name $i --query 'AttachedPolicies[*].PolicyArn' --output text)
    #     for x in ${describe_policies[@]}
    #     do
    #       aws iam get-policy-version --policy-arn $x --version-id v1
    #     done
done
