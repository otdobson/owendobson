from instapy import InstaPy
from instapy import smart_run

# Your Instagram credentials
insta_username = 'otdobson'
insta_password = '3dqi9DUS54m*'

# Set up InstaPy session
session = InstaPy(username='otdobson', password='3dqi9DUS54m*', headless_browser=True)

# Login to Instagram
with smart_run(session):
    # Set up quota supervisor with reduced quotas (45% less than the rate limits)
    session.set_quota_supervisor(enabled=True,
                                 sleep_after=["likes", "comments_d", "follows", "unfollows", "server_calls_h"],
                                 sleepyhead=True,
                                 stochastic_flow=True,
                                 notify_me=True,
                                 peak_likes_hourly=31,
                                 peak_likes_daily=319,
                                 peak_comments_hourly=11,
                                 peak_comments_daily=100,
                                 peak_follows_hourly=26,
                                 peak_follows_daily=None,
                                 peak_unfollows_hourly=19,
                                 peak_unfollows_daily=221,
                                 peak_server_calls_hourly=None,
                                 peak_server_calls_daily=2585)

    # Set up action delays
    session.set_action_delays(enabled=True, like=3, comment=5, follow=4.17, unfollow=28, story=10)

    # Set up unfollowing users who don't follow back
    session.set_relationship_bounds(enabled=True, potency_ratio=1.21, delimit_by_numbers=True,
                                    max_followers=5000, min_followers=30, min_following=30)

    # Unfollow users who don't follow back
    session.unfollow_users(amount=100, nonFollowers=True, style="RANDOM", unfollow_after=3 * 60 * 60, sleep_delay=501)

# End the InstaPy session
session.end()
