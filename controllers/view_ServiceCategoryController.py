from flask import render_template
from entity.ServiceCategoryEntity import ServiceCategoryEntity

class ViewServiceCategoriesController:
    def view(self):
        categories = ServiceCategoryEntity().get_all_categories()
        return render_template('view_service_categories.html', categories=categories)

def register_view_service_categories_route(app):
    @app.route('/manager/categories')
    def view_service_categories():
        return ViewServiceCategoriesController().view()
