on run {input, parameters}
	tell application "Terminal"
		do shell script "ls /opt/" user name "chun" password "rmp4wu/6" with administrator privileges
	end tell
	return input
end run