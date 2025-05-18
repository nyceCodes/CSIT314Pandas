from flask import request, redirect, url_for, flash, render_template
from entity.ServiceCategoryEntity import ServiceCategoryEntity

class CreateServiceCategoryController:
    def create(self):
        if request.method == 'POST':
            name = request.form['serviceCategoryName']
            description = request.form['serviceCategoryDescription']
            ServiceCategoryEntity().create_category(name, description)
            flash("Category created.")
            return redirect(url_for('view_service_categories'))
        return render_template('service_category_form.html', category=None)

def register_create_service_category_route(app):
    @app.route('/manager/categories/create', methods=['GET', 'POST'])
    def create_service_category():
        return CreateServiceCategoryController().create()
