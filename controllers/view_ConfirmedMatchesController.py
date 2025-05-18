from flask import render_template, session, abort
from entity.ConfirmedMatchEntity import ConfirmedMatchEntity

class ViewConfirmedMatchesController:
    def view(self):
        user_id = session.get('user_id')
        if not user_id:
            abort(403)
        history = ConfirmedMatchEntity().get_confirmed_matches_by_cleaner_id(user_id)
        return render_template('cleaner_confirmed_history.html', history=history)

def register_view_confirmed_matches_route(app):
    @app.route('/cleaner_confirmed_history')
    def view_confirmed_matches():
        return ViewConfirmedMatchesController().view()
