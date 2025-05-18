from flask import request, redirect, url_for, flash, render_template
from entity.CleanerServiceEntity import CleanerServiceEntity
from entity.ServiceCategoryEntity import ServiceCategoryEntity

class UpdateCleaningServiceController:
    def update(self, service_id):
        entity = CleanerServiceEntity()
        service = CleanerServiceEntity().get_service_by_id(service_id)
        categories = ServiceCategoryEntity().get_all_categories()

        if not service:
            flash("Service not found.")
            return redirect(url_for('view_services'))

        if request.method == 'POST':
            name = request.form['cleaningServiceName']
            description = request.form['cleaningServiceDescription']
            price = request.form['cleaningServicePrice']
            category_id = request.form['category_id']
            date_available = request.form['date_available']
            location = request.form['location']
            entity.update_service(service_id, name, description, price, category_id, date_available, location)
            flash("Service updated.")
            return redirect(url_for('view_services'))

        return render_template('cleaner_service_form.html', service=service, categories=categories)

def register_update_cleaning_service_route(app):
    @app.route('/cleaner/services/<int:sid>/edit', methods=['GET', 'POST'])
    def update_cleaning_service(sid):
        return UpdateCleaningServiceController().update(sid)
