from flask import request, render_template
from entity.UserProfileEntity import UserProfileEntity

class SearchUserProfileController:
    def search(self):
        keyword = request.args.get('query', '')
        results = UserProfileEntity().search_profiles(keyword)
        return render_template('profiles.html', profiles=results)

def register_search_user_profile_route(app):
    @app.route('/admin/profiles/search')
    def search_user_profiles():
        return SearchUserProfileController().search()
