from flask import redirect, url_for, flash
from entity.CleanerServiceEntity import CleanerServiceEntity

class DeleteCleanerServiceController:
    def delete(self, sid):
        CleanerServiceEntity().delete_service(sid)
        flash("Service deleted.")
        return redirect(url_for('view_services'))

def register_delete_service_route(app):
    @app.route('/cleaner/services/<int:sid>/delete')
    def delete_service(sid):
        return DeleteCleanerServiceController().delete(sid)
