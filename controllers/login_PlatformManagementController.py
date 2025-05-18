from flask import request, session, redirect, url_for, flash, render_template
from entity.UserAccountEntity import UserAccountEntity

class LoginPlatformManagerController:
    def login(self):
        if request.method == 'POST':
            username = request.form['username']
            password = request.form['password']
            user = UserAccountEntity().authenticate_user(username, password, role='platform_manager')
            if user:
                session['user_id'] = user['id']
                session['role'] = user['role']
                session['username'] = user['username']
                session['name'] = user['name']
                flash("Login successful.")
                return redirect(url_for('platform_management_dashboard'))
            flash("Invalid credentials.")
        return render_template('login.html')

def register_platform_manager_login_route(app):
    @app.route('/login/platform_manager', methods=['GET', 'POST'])
    def login_platform_manager():
        return LoginPlatformManagerController().login()
