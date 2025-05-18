from flask import redirect, url_for, flash
from entity.UserAccountEntity import UserAccountEntity

class SuspendUserAccountController:
    def suspend(self, user_id):
        UserAccountEntity().suspend_user(user_id)
        flash("User account suspended.")
        return redirect(url_for('admin_dashboard'))

def register_suspend_user_account_route(app):
    @app.route('/admin/users/<int:user_id>/suspend')
    def suspend_user_account(user_id):
        return SuspendUserAccountController().suspend(user_id)
