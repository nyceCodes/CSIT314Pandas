from flask import render_template
from entity.UserAccountEntity import UserAccountEntity

class ViewUserAccountController:
    def view(self):
        users = UserAccountEntity().get_all_users()
        return render_template('users.html', users=users)

def register_view_user_account_route(app):
    @app.route('/admin/users')
    def view_user_accounts():
        return ViewUserAccountController().view()
