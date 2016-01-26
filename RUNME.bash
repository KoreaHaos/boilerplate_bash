source haos_bash/utilities_bash/console_input/querry_yes_no.bash

echo "Hello!";

user_wants_to_continue="";
query_to_continue="Continue ? ";

ask_yes_no user_wants_to_continue "$query_to_continue";

while [ "$user_wants_to_continue" = "TRUE" ]

do
    ask_yes_no user_wants_to_continue "$query_to_continue";
done

echo "Goodbye!";
