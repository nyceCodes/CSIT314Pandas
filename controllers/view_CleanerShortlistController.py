from flask import session, render_template
from entity.ShortlistEntity import ShortlistEntity

class ViewShortlistController:
    def view(self):
        homeowner_id = session['user_id']
        shortlist = ShortlistEntity().get_shortlist(homeowner_id)
        return render_template('view_shortlist.html', shortlist=shortlist)

def register_view_shortlist_route(app):
    @app.route('/homeowner/shortlist')
    def view_shortlist():
        return ViewShortlistController().view()
