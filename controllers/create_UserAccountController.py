from flask import request, redirect, url_for, flash, render_template
from entity.UserAccountEntity import UserAccountEntity

class CreateUserAccountController:
    def create(self):
        if request.method == 'POST':
            username = request.form['username']
            password = request.form['password']
            role = request.form['role']
            UserAccountEntity().create_user(username, password, role)
            flash("User account created.")
            return redirect(url_for('admin_dashboard'))
        return render_template('user_form.html', user=None)

def register_create_user_account_route(app):
    @app.route('/admin/users/create', methods=['GET', 'POST'])
    def create_user_account():
        return CreateUserAccountController().create()
