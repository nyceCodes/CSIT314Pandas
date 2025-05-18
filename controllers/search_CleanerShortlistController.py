from flask import session, request, render_template
from entity.ShortlistEntity import ShortlistEntity

class SearchShortlistController:
    def search(self):
        q = request.args.get('q', '')
        homeowner_id = session['user_id']
        results = ShortlistEntity().search_shortlist(homeowner_id, q)
        return render_template('view_shortlist.html', shortlist=results)

def register_search_shortlist_route(app):
    @app.route('/homeowner/shortlist/search')
    def search_shortlist():
        return SearchShortlistController().search()
