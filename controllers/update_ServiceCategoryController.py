from flask import request, redirect, url_for, flash, render_template
from entity.ServiceCategoryEntity import ServiceCategoryEntity

class UpdateServiceCategoryController:
    def update(self, category_id):
        entity = ServiceCategoryEntity()
        category = entity.get_category_by_id(category_id)

        if request.method == 'POST':
            name = request.form['serviceCategoryName']
            description = request.form['serviceCategoryDescription']
            entity.update_category(category_id, name, description)
            flash("Category updated.")
            return redirect(url_for('view_service_categories'))

        return render_template('service_category_form.html', category=category)

def register_update_service_category_route(app):
    @app.route('/manager/categories/<int:category_id>/edit', methods=['GET', 'POST'])
    def update_service_category(category_id):
        return UpdateServiceCategoryController().update(category_id)
