from flask import request, render_template
from entity.UserAccountEntity import UserAccountEntity

class SearchUserAccountController:
    def search(self):
        keyword = request.args.get('query', '')
        results = UserAccountEntity().search_users(keyword)
        return render_template('users.html', users=results)

def register_search_user_account_route(app):
    @app.route('/admin/users/search')
    def search_user_accounts():
        return SearchUserAccountController().search()
