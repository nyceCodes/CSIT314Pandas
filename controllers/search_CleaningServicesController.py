from flask import request, render_template
from entity.CleanerServiceEntity import CleanerServiceEntity

class SearchCleaningServicesController:
    def search(self):        
        name = request.args.get('name')
        location = request.args.get('location')
        date = request.args.get('date')        
        services = CleanerServiceEntity().search_all_services(name=name, location=location, date=date)

        if not name and not location and not date:
            services = CleanerServiceEntity().search_all_services()
        else:
            services = CleanerServiceEntity().search_services(name, location, date)

        return render_template('find_cleaners.html', services=services)

def register_search_cleaning_services_route(app):
    @app.route('/services/search')
    def search_cleaning_services():
        return SearchCleaningServicesController().search()
