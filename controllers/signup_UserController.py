from flask import request, render_template, redirect, url_for, flash
from entity.UserAccountEntity import UserAccountEntity

def register_signup_user_route(app):
    @app.route('/signup', methods=['GET', 'POST'])
    def signup():
        if request.method == 'POST':
            username = request.form['username']
            password = request.form['password']
            role = request.form['role']
            UserAccountEntity().create_new_account(username, password, role, status='active')
            allowed_roles = ['cleaner', 'home_owner', 'user_admin', 'platform_manager']
            if role not in allowed_roles:
                flash("Invalid role selected.", "danger")
                return redirect(url_for('signup'))
            flash("Account created successfully. Please log in.", "success")
            return redirect(url_for('login'))

        return render_template('signup.html')
