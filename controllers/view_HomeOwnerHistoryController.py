from flask import session, render_template
from entity.ConfirmedMatchEntity import ConfirmedMatchEntity

class ViewHomeOwnerHistoryController:
    def view(self):
        home_owner_id = session['user_id']
        history = ConfirmedMatchEntity().get_matches_by_homeowner(home_owner_id)
        return render_template('view_homeowner_history.html', history=history)

def register_view_homeowner_history_route(app):
    @app.route('/homeowner/history')
    def view_homeowner_history():
        return ViewHomeOwnerHistoryController().view()
