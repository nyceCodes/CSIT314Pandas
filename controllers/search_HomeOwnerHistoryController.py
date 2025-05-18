from flask import session, request, render_template
from entity.ConfirmedMatchEntity import ConfirmedMatchEntity

class SearchHomeOwnerHistoryController:
    def search(self):
        q = request.args.get('q', '')
        home_owner_id = session['user_id']
        results = ConfirmedMatchEntity().search_matches(home_owner_id, q, role='home_owner')
        return render_template('view_homeowner_history.html', history=results)

def register_search_homeowner_history_route(app):
    @app.route('/homeowner/history/search')
    def search_homeowner_history():
        return SearchHomeOwnerHistoryController().search()
