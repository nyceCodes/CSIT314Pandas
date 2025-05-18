from flask import redirect, url_for, flash
from entity.ServiceCategoryEntity import ServiceCategoryEntity

class DeleteServiceCategoryController:
    def delete(self, category_id):
        ServiceCategoryEntity().delete_category(category_id)
        flash("Category deleted.")
        return redirect(url_for('view_service_categories'))

def register_delete_service_category_route(app):
    @app.route('/manager/categories/<int:category_id>/delete')
    def delete_service_category(category_id):
        return DeleteServiceCategoryController().delete(category_id)
