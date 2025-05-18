from flask import request, session, render_template
from entity.CleanerServiceEntity import CleanerServiceEntity

class SearchCleanerServiceController:
    def search(self):
        keyword = request.args.get('q', '')
        cleaner_id = session['user_id']
        results = CleanerServiceEntity().search_myservices(cleaner_id, keyword)
        return render_template('cleaner_services.html', services=results)

def register_search_service_route(app):
    @app.route('/cleaner/services/search')
    def search_service():
        return SearchCleanerServiceController().search()
