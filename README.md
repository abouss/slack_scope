# slack_scope
A slack integration tool that generates horoscopes at the command "pp horoscope me". Made for Paperless Post's 'Stampy Day' Hackathon. The Horoscope API makes a call to the [Astrologer site](http://new.theastrologer.com/daily-horoscope) and returns the horoscope for the day matching the sign of the person who had given the command. Emojis are included in this response.

As a Slack integration, slack_scope relies on a HOROSCOPE_SIGNS hash file in order to take a person's username and convert it into their sign. (It's an opt-in process!) 

# Sample Usage
    POST: 	  {"text":"pp horoscope me", "user_name":aboussayoud }  
    RESPONSE: {"text"::sagittarius::arrow_upper_right: Sagittarius:arrow_upper_right::sagittarius:\nYou're an adventurer, and you need a wide-open vista to feel truly free. But right now, you're limiting your own point of view. Being narrow-minded will only impede your navigation. So open up. Otherwise, you'll start feeling the effects on your health and happiness. If you haven't been smiling much lately, or you're feeling tired and lethargic, you'll know it's time to loosen up about some issue in your life. Accept it as it is, not as you want it to be.\n"}
