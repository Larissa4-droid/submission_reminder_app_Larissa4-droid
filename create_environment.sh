#!/bin/bash

mkdir -p submission_reminder_app/{app,modules,assets,config}

cd submission_reminder_app

cat ../../reminder.sh > app/reminder.sh && chmod +x app/reminder.sh
cat ../../functions.sh > modules/functions.sh && chmod +x modules/functions.sh
cat ../../config.env > config/config.env 
cat ../submissions.txt > assets/submissions.txt

#add five students
echo -e "Billy, Shell Navigation, not submitted\nElla, Shell Navigation, not submitted\nSophy, Shell Navigation, submitted\nKel, Shell Navigation, submitted\nlarry, Shell Navigation,  submitted" >> assets/submissions.txt

#create script
echo -e "#!/bin/bash\n\n./app/reminder.sh" > startup.sh && chmod +x startup.sh
