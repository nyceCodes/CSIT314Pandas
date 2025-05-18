from flask import redirect, url_for, flash
from entity.UserProfileEntity import UserProfileEntity

class SuspendUserProfileController:
    def suspend(self, profile_id):
        UserProfileEntity().suspend_profile(profile_id)
        flash("Profile suspended.")
        return redirect(url_for('admin_dashboard'))

def register_suspend_user_profile_route(app):
    @app.route('/admin/profiles/<int:profile_id>/suspend')
    def suspend_user_profile(profile_id):
        return SuspendUserProfileController().suspend(profile_id)
