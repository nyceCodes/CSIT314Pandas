from flask import request, redirect, url_for, flash, session, render_template
from entity.UserAccountEntity import UserAccountEntity

class LoginUserAdminController:
    def login(self):
        if request.method == 'POST':
            username = request.form['username']
            password = request.form['password']
            user = UserAccountEntity().authenticate_user(username, password, role='user_admin')
            if user:
                session['user_id'] = user['id']
                session['role'] = user['role']
                flash("Login successful.")
                return redirect(url_for('admin_dashboard'))
            flash("Invalid credentials.")
        return render_template('login.html')

def register_login_user_admin_route(app):
    @app.route('/login/user_admin', methods=['GET', 'POST'])
    def login_user_admin():
        return LoginUserAdminController().login()


