from flask import render_template
from entity.UserProfileEntity import UserProfileEntity

class ViewUserProfileController:
    def view(self):
        profiles = UserProfileEntity().get_all_profiles()
        return render_template('profiles.html', profiles=profiles)

def register_view_user_profile_route(app):
    @app.route('/admin/profiles')
    def view_user_profiles():
        return ViewUserProfileController().view()
