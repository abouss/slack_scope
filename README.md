# slack_scope
A slack integration tool that generates horoscopes at the command "pp horoscope me". Made for Paperless Post's 'Stampy Day' Hackathon. The Horoscope API makes a call to the [Astrologer site](http://new.theastrologer.com/daily-horoscope) and returns the horoscope for the day matching the sign of the person who had given the command.

As a Slack integration, slack_scope relies on a HOROSCOPE_SIGNS hash file in order to take a person's username and convert it into their sign. (It's an opt-in process!) 
