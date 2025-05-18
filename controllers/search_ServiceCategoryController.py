from flask import request, render_template
from entity.ServiceCategoryEntity import ServiceCategoryEntity

class SearchServiceCategoryController:
    def search(self):
        q = request.args.get('q', '')
        results = ServiceCategoryEntity().search_categories(q)
        return render_template('service_categories.html', categories=results)

def register_search_service_category_route(app):
    @app.route('/manager/categories/search')
    def search_service_categories():
        return SearchServiceCategoryController().search()
