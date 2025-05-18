from flask import render_template, session
from entity.ViewStatsEntity import ViewStatsEntity

class ViewCleanerProfileShortlistStatsController:
    def view(self):
        cleaner_id = session['user_id']
        count = ViewStatsEntity().get_shortlist_count(cleaner_id)
        return render_template('cleaner_stats.html', profile_views=None, shortlist_count=count)

def register_view_shortlist_stats_route(app):
    @app.route('/cleaner/stats/shortlists')
    def view_profile_shortlists():
        return ViewCleanerProfileShortlistStatsController().view()
