function devlink
              set input_url $argv
              set gcp_prefix "https://storage.googleapis.com/panda-development-assets/"
              set smrt_prefix "https://assets-staging.smartzer.com/"
              set new_url (string replace $gcp_prefix $smrt_prefix $argv)
              echo $new_url | pbcopy
          
end
