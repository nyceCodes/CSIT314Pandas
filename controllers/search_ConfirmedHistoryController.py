from flask import session, request, render_template, redirect, url_for
from entity.ConfirmedMatchEntity import ConfirmedMatchEntity

class SearchConfirmedHistoryController:
    def search(self):
        if 'user_id' not in session:
            return redirect(url_for('home'))
        
        user_id = session['user_id']
        role = session['role']
        query = request.args.get('query', '').strip()

        entity = ConfirmedMatchEntity()

        # 🔍 For cleaner: use search OR get by cleaner_id
        if role == 'cleaner':
            if query:
                history = entity.search_matches(user_id, query, role='cleaner')
            else:
                history = entity.get_confirmed_matches_by_cleaner_id(user_id)

        # 👤 For home owner: use get_matches_by_homeowner only
        elif role == 'home_owner':
            history = entity.get_matches_by_homeowner(user_id)

        else:
            history = []

        return render_template("search_cleaner_confirmed_history.html", history=history)

def register_search_confirmed_history_route(app):
    @app.route('/cleaner/history/search', endpoint='search_confirmed_history')
    def search_confirmed_history():
        return SearchConfirmedHistoryController().search()
