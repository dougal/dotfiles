# Function to set the current AWS Profile.
#
# Checks to see if the profile exists before setting it.

set AWS_PROFILES_PATH $HOME/.aws/credentials

function awsprofile
  set target_profile $argv

  if test -z $target_profile
    echo $AWS_PROFILE
    return
  end

  # Check there is such a profile.
  if grep -Fxq "[$target_profile]" ~/.aws/credentials 
    echo $target_profile

    # Use -g to set global scope, so inside current shell, not just inside this function.
    set -gx AWS_PROFILE $target_profile

  else
    echo "Profile does not exist: $target_profile"
    return
  end
end
