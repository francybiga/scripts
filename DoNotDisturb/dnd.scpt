on alfred_script(q)

set apps to {"Mail", "Slack", "Workplace Chat"}
repeat with a from 1 to length of apps
	set current_app to item a of apps	
		if (q is equal to "off") or (q is equal to "pause") then
			if application current_app is not running then
				tell application current_app to launch
			end if
		else	 
			if (q is equal to "on") or (q is equal to "work") then
				if application current_app is running then
					tell application current_app to quit
				end if	
			end if
		end if	
end repeat
	
end alfred_script
