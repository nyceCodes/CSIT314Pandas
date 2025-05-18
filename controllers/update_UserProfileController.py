from flask import request, redirect, url_for, flash, render_template
from entity.UserProfileEntity import UserProfileEntity

class UpdateUserProfileController:
    def update(self, profile_id):
        entity = UserProfileEntity()
        profile = entity.get_profile_by_id(profile_id)
        if request.method == 'POST':
            name = request.form['name']
            email = request.form['email']
            dob = request.form['dob']
            role = request.form['role']
            status = request.form.get('active', 1)
            entity.update_profile(profile_id, name, email, dob, role, status)
            flash("Profile updated.")
            return redirect(url_for('admin_dashboard'))
        return render_template('profile_form.html', profile=profile)

def register_update_user_profile_route(app):
    @app.route('/admin/profiles/<int:profile_id>/edit', methods=['GET', 'POST'])
    def update_user_profile(profile_id):
        return UpdateUserProfileController().update(profile_id)
