from flask import render_template, session
from entity.CleanerServiceEntity import CleanerServiceEntity

class ViewCleanerServicesController:
    def view(self):
        cleaner_id = session['user_id']
        services = CleanerServiceEntity().get_services_by_cleaner(cleaner_id)
        return render_template('cleaner_services.html', services=services)

def register_view_service_route(app):
    @app.route('/cleaner/services')
    def view_services():
        return ViewCleanerServicesController().view()
