from flask import session, request, render_template
from entity.ConfirmedMatchEntity import ConfirmedMatchEntity

class SearchConfirmedHistoryController:
    def search(self):
        q = request.args.get('q', '')
        cleaner_id = session['user_id']
        results = ConfirmedMatchEntity().search_matches(cleaner_id, q, role='cleaner')
        return render_template('cleaner_confirmed_history.html', history=results)

def register_search_confirmed_history_route(app):
    @app.route('/cleaner/history/search')
    def search_confirmed_history():
        return SearchConfirmedHistoryController().search()
