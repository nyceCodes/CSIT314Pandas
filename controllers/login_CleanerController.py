from flask import request, session, redirect, url_for, flash, render_template
from entity.UserAccountEntity import UserAccountEntity

class LoginCleanerController:
    def login(self):
        if request.method == 'POST':
            username = request.form['username']
            password = request.form['password']
            user = UserAccountEntity().authenticate_user(username, password, role='cleaner')
            if user:
                session['user_id'] = user['id']
                session['username'] = user['username']
                session['name'] = user['name']
                session['role'] = user['role']
                flash("Login successful.")
                return redirect(url_for('cleaner_dashboard'))
            flash("Invalid credentials.")
        return render_template('login.html')

def register_cleaner_login_route(app):
    @app.route('/login/cleaner', methods=['GET', 'POST'])
    def login_cleaner():
        return LoginCleanerController().login()
