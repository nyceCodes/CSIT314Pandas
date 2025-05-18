from flask import request, redirect, url_for, flash, render_template
from entity.UserProfileEntity import UserProfileEntity

class CreateUserProfileController:
    def create(self):
        if request.method == 'POST':
            name = request.form['name']
            role = request.form['role']
            email = request.form['email']
            dob = request.form['dob']
            status = 'active'
            UserProfileEntity().create_profile(name, email, dob, role, status)
            flash("Profile created successfully.")
            return redirect(url_for('view_user_profiles'))
        return render_template('profile_form.html', profile=None)

def register_create_user_profile_route(app):
    @app.route('/admin/profiles/create', methods=['GET', 'POST'])
    def create_user_profile():
        return CreateUserProfileController().create()
