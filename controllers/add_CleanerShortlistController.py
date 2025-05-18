from flask import session, redirect, url_for, flash
from entity.ShortlistEntity import ShortlistEntity

class AddShortlistController:
    def add(self, cleaner_id):
        homeowner_id = session.get('user_id')
        ShortlistEntity().add_to_shortlist(homeowner_id, cleaner_id)
        flash("Cleaner added to shortlist.")
        return redirect(url_for('view_shortlist'))

def register_add_shortlist_route(app):
    @app.route('/homeowner/shortlist/add/<int:cleaner_id>')
    def add_to_shortlist(cleaner_id):
        return AddShortlistController().add(cleaner_id)
