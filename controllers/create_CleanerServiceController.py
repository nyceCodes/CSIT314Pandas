from flask import request, redirect, url_for, flash, session, render_template
from entity.CleanerServiceEntity import CleanerServiceEntity
from entity.ServiceCategoryEntity import ServiceCategoryEntity
from entity.ReportEntity import ReportEntity


class CreateCleanerServiceController:
    def create(self):
        categories = ServiceCategoryEntity().get_all_categories()

        if request.method == 'POST':
            name = request.form['cleaningServiceName']
            description = request.form['cleaningServiceDescription']
            price = request.form['cleaningServicePrice']
            category_id = request.form['category_id']
            date_available = request.form['date_available']
            location = request.form['location']
            cleaner_id = session['user_id']

            CleanerServiceEntity().create_service(
                cleaner_id, name, description, price,
                category_id, date_available, location
            )
            ReportEntity().log_action(cleaner_id, 'Created new service')


            flash("Service created successfully!!")
            return redirect(url_for('view_services'))

        return render_template('cleaner_service_form.html', service=None, categories=categories)

def register_create_service_route(app):
    @app.route('/cleaner/services/create', methods=['GET', 'POST'])
    def create_service():
        return CreateCleanerServiceController().create()
