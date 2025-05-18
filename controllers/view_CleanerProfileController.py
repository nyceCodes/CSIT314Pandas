from flask import render_template
from entity.UserAccountEntity import UserAccountEntity
from entity.CleanerServiceEntity import CleanerServiceEntity
from entity.ViewStatsEntity import ViewStatsEntity


class ViewCleanerProfileController:
    def view(self, cleaner_id):
        cleaner = UserAccountEntity().get_user_by_id_with_location(cleaner_id)
        services = CleanerServiceEntity().get_services_by_cleaner(cleaner_id)
        ViewStatsEntity().increment_profile_view(cleaner_id)
        return render_template("view_cleaner_profile.html", cleaner=cleaner, services=services)


def register_view_cleaner_profile_route(app):
    @app.route('/homeowner/cleaner/<int:cleaner_id>')
    def view_cleaner_profile(cleaner_id):
        return ViewCleanerProfileController().view(cleaner_id)
