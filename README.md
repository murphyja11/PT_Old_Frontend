1) Is it easier to build the habit of living mindfully by doing 1 10m meditation session a day, or 5 1m meditations? 
    Is there a benefit of a few reminders to be mindful throughout the day, as opposed to once at the beginning or end?
    
2) You are what you do consistently -> Consistency is the most important factor in seeing benefits from mindfulness.
    Can you make mindfulness habits easier to stick to/more engaging by recommending a personalized meditation given someone's
    past behavior/preferences and their current state? (ie current health data/activity)
    


What the app will look like:
 - On open, the home screen will present the user with 3 recommended meditations for that current moment, based on their past preferences, the 
    current time of day, day of the week, and possibly current health data sourced from HealthKit.  Good recommendations mean that every time 
    the user opens the app, they'll know what they need is waiting for them and they don't need to go looking around/guessing what they need.  
    The more passive the experience, the easier it is to maintain the habit.  Similar to how TikTok just starts showing you videos when you open it.
    If the recommendations aren't good, which is very likely if we can't collect the right data, the process of searching to find what you need
    should be as simple/intuitive as possible
 - When a user choses to play a recording, it sends a request to the web server, which then fetchs the audio file from a database and sends it back
    The user should also have the ability to like a meditation, which will store it on their device automatically.
    Sourcing the recordings is going to need to be a focus, but I think for later, and the Brown Mindfulness Center will hopefully be helpful.
 - User events (plays, likes, browse, shares) are sent to the web server to be stored in another database, so user behavior/preferences can be used
    by the recommendation system.
 - The Recommendation System: analyzes users preferences to generate personalized recommendations.  It should incorporate real-time data, such as time'
    of day and health data, as well as past preferences.  This will involve a hybrid online/offline approach and will be pretty tough.  It should also
    be a priority for testing and experimentation with the accuracy of the models to be done, so we can always be improving it.  Once the offline/online
    results are combined into a final set of recommendations (online conducted on the open of the app), the recommendations will be pushed to the user.
    Netflix:
        https://netflixtechblog.com/netflix-recommendations-beyond-the-5-stars-part-1-55838468f429
        https://netflixtechblog.com/netflix-recommendations-beyond-the-5-stars-part-2-d9b96aa399f5
        https://netflixtechblog.com/system-architectures-for-personalization-and-recommendation-e081aa94b5d8
    
    
    
