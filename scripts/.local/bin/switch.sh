#!/bin/sh

BRANCHES=$(gum choose --no-limit "smrtzr" "editor" "packages-java")
echo $BRANCHES | wc -w
# if [ wc -w <<<  "$BRANCHES" > 1 ]; then
#     echo "hi"
#     exit 1
# fi
# echo "Same branch for all packages?"
# SAME_BRANCH=$(gum choose "Yes" "No")
# echo $SAME_BRANCH
# echo "You chose: $BRANCHES"
# TYPE=$(gum choose "PAN" "BUG" "Other")
# TICKET_NUMBER=$(gum input --placeholder "Ticket number")
#
# # Pre-populate the input with the type(scope): so that the user may change it
# OTHER_BRANCH=$(gum choose "Yes" "No" "Other")
# OTHER_BRANCH=$(gum input --value "$TYPE$SCOPE: " --placeholder "Summary of this change")
# SUMMARY=$(gum input --value "$TYPE$SCOPE: " --placeholder "Summary of this change")
# DESCRIPTION=$(gum write --placeholder "Details of this change (CTRL+D to finish)")
#
# # Commit these changes
# gum confirm "Commit changes?" && git commit -m "$SUMMARY" -m "$DESCRIPTION"
