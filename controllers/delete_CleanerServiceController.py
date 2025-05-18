from flask import redirect, url_for, flash, session  
from entity.CleanerServiceEntity import CleanerServiceEntity
from entity.ReportEntity import ReportEntity

class DeleteCleanerServiceController:
    def delete(self, sid):
        service = CleanerServiceEntity().get_service_by_id(sid)

        if service:
            ReportEntity().log_action(
                user_id=session['user_id'],
                action=f'Deleted service "{service["cleaningServiceName"]}" at {service["location"]}',
                cleaner_id=session['user_id'],
                service_name=service['cleaningServiceName'],
                location=service['location']
            )

        CleanerServiceEntity().delete_service(sid)
        ReportEntity().log_action(session['user_id'], f'Deleted service [ID: {sid}]')
        flash("Service deleted.")
        return redirect(url_for('view_services'))

def register_delete_service_route(app):
    @app.route('/cleaner/services/<int:sid>/delete')
    def delete_service(sid):
        return DeleteCleanerServiceController().delete(sid)
