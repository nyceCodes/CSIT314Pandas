from flask import session, redirect, url_for, flash

class LogoutController:
    def logout(self):
        role = session.get('role')
        session.clear()
        flash("You have been logged out.")

        if role == 'cleaner':
            return redirect(url_for('login_cleaner'))
        elif role == 'user_admin':
            return redirect(url_for('login_user_admin'))
        elif role == 'home_owner':
            return redirect(url_for('login_home_owner'))
        elif role == 'platform_manager':
            return redirect(url_for('login_platform_manager'))

        return redirect(url_for('home'))

def register_logout_route(app):
    @app.route('/logout')
    def logout():
        return LogoutController().logout()
