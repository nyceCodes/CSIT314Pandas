from flask import request, redirect, url_for, flash, render_template
from entity.UserAccountEntity import UserAccountEntity

class UpdateUserAccountController:
    def update(self, user_id):
        entity = UserAccountEntity()
        user = entity.get_user_by_id(user_id)
        if request.method == 'POST':
            username = request.form['username']
            role = request.form['role']
            status = request.form['status']
            entity.update_user(user_id, username, role, status)
            flash("User account updated.")
            return redirect(url_for('admin_dashboard'))
        return render_template('user_form.html', user=user)

def register_update_user_account_route(app):
    @app.route('/admin/users/<int:user_id>/edit', methods=['GET', 'POST'])
    def update_user_account(user_id):
        return UpdateUserAccountController().update(user_id)
