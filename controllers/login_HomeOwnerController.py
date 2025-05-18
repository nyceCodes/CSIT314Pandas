from flask import request, session, redirect, url_for, flash, render_template
from entity.UserAccountEntity import UserAccountEntity

class LoginHomeOwnerController:
    def login(self):
        if request.method == 'POST':
            username = request.form['username']
            password = request.form['password']
            user = UserAccountEntity().authenticate_user(username, password, role='home_owner')
            if user:
                session['user_id'] = user['id']
                session['role'] = user['role']
                session['name'] = user['name']
                session['username'] = user['username']
                flash("Login successful.")
                return redirect(url_for('homeowner_dashboard'))
            flash("Invalid credentials.")
        return render_template('login.html')

def register_homeowner_login_route(app):
    @app.route('/login/home_owner', methods=['GET', 'POST'])
    def login_home_owner():
        return LoginHomeOwnerController().login()
