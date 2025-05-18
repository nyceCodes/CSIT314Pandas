from flask import render_template, session
from entity.ViewStatsEntity import ViewStatsEntity

class ViewCleanerServiceViewsController:
    def view(self):
        cleaner_id = session['user_id']
        views = ViewStatsEntity().get_service_views(cleaner_id)
        return render_template('cleaner_stats.html', profile_views=views, shortlist_count=None)

def register_view_service_views_route(app):
    @app.route('/cleaner/stats/views')
    def view_service_views():
        return ViewCleanerServiceViewsController().view()
