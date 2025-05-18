import os
from flask import Flask, render_template, redirect, url_for

app = Flask(__name__, template_folder='boundary')
app.secret_key = 'secret'

from controllers.create_UserAccountController import register_create_user_account_route
from controllers.view_UserAccountController import register_view_user_account_route
from controllers.update_UserAccountController import register_update_user_account_route
from controllers.suspend_UserAccountController import register_suspend_user_account_route
from controllers.search_UserAccountController import register_search_user_account_route

from controllers.create_UserProfileController import register_create_user_profile_route
from controllers.view_UserProfileController import register_view_user_profile_route
from controllers.update_UserProfileController import register_update_user_profile_route
from controllers.suspend_UserProfileController import register_suspend_user_profile_route
from controllers.search_UserProfileController import register_search_user_profile_route

from controllers.login_UserAdminController import register_login_user_admin_route
from controllers.login_CleanerController import register_cleaner_login_route
from controllers.login_PlatformManagementController import register_platform_manager_login_route
from controllers.login_HomeOwnerController import register_homeowner_login_route

from controllers.logout_Controller import register_logout_route

from controllers.create_CleanerServiceController import register_create_service_route
from controllers.view_CleanerServicesController import register_view_service_route
from controllers.update_CleanerServiceController import register_update_cleaning_service_route
from controllers.delete_CleanerServiceController import register_delete_service_route
from controllers.search_CleaningServicesController import register_search_cleaning_services_route
from controllers.search_CleanerServicesController import register_search_service_route

from controllers.view_CleanerServiceViewsController import register_view_service_views_route
from controllers.view_CleanerProfileShortlistStatsController import register_view_shortlist_stats_route

from controllers.search_ConfirmedHistoryController import register_search_confirmed_history_route
from controllers.view_ConfirmedMatchesController import register_view_confirmed_matches_route

from controllers.add_CleanerShortlistController import register_add_shortlist_route
from controllers.view_CleanerShortlistController import register_view_shortlist_route
from controllers.search_CleanerShortlistController import register_search_shortlist_route
from controllers.view_CleanerProfileController import register_view_cleaner_profile_route
from controllers.search_CleaningServicesController import register_search_cleaning_services_route

from controllers.create_ServiceCategoryController import register_create_service_category_route
from controllers.view_ServiceCategoryController import register_view_service_categories_route
from controllers.update_ServiceCategoryController import register_update_service_category_route
from controllers.delete_ServiceCategoryController import register_delete_service_category_route
from controllers.search_ServiceCategoryController import register_search_service_category_route

from controllers.daily_ReportController import register_daily_report_route
from controllers.weekly_ReportController import register_weekly_report_route
from controllers.monthly_ReportController import register_monthly_report_route

from controllers.view_HomeOwnerHistoryController import register_view_homeowner_history_route
from controllers.search_HomeOwnerHistoryController import register_search_homeowner_history_route

from controllers.signup_UserController import register_signup_user_route


# Register routes
register_create_user_account_route(app)
register_view_user_account_route(app)
register_update_user_account_route(app)
register_suspend_user_account_route(app)
register_search_user_account_route(app)

register_create_user_profile_route(app)
register_view_user_profile_route(app)
register_update_user_profile_route(app)
register_suspend_user_profile_route(app)
register_search_user_profile_route(app)

register_login_user_admin_route(app)
register_cleaner_login_route(app)
register_platform_manager_login_route(app)
register_homeowner_login_route(app)

register_logout_route(app)

register_create_service_route(app)
register_view_service_route(app)
register_update_cleaning_service_route(app)
register_delete_service_route(app)
register_search_service_route(app)

register_view_service_views_route(app)
register_view_shortlist_stats_route(app)

register_view_confirmed_matches_route(app)
register_search_confirmed_history_route(app)

register_add_shortlist_route(app)
register_view_shortlist_route(app)
register_search_shortlist_route(app)
register_view_cleaner_profile_route(app)

register_search_cleaning_services_route(app)

register_create_service_category_route(app)
register_view_service_categories_route(app)
register_update_service_category_route(app)
register_delete_service_category_route(app)
register_search_service_category_route(app)

register_daily_report_route(app)
register_weekly_report_route(app)
register_monthly_report_route(app)

register_view_homeowner_history_route(app)
register_search_homeowner_history_route(app)

register_signup_user_route(app)

# Home Page
@app.route('/')
def home():
    return render_template('home_page.html')

# Login Page
@app.route('/login')
def login():
    return render_template('login.html')

# Logout
@app.route('/logout')
def logout_page():
    return render_template('logout.html')

# Find Cleaners
@app.route('/find_cleaners')
def find_cleaners():
    return render_template('find_cleaners.html')

# How it Works
@app.route('/how-it-works')
def how_it_works():
    return render_template('how_it_works.html')

# Pricing
@app.route('/pricing')
def pricing():
    return render_template('pricing.html')

# - - - - - -

# Cleaner Dashboard
@app.route('/cleaner_dashboard')
def cleaner_dashboard():
    return render_template('cleaner_dashboard.html')

# Home Owner Dashboard
@app.route('/homeowner_dashboard')
def homeowner_dashboard():
    return render_template('homeowner_dashboard.html')

# User Admin Dashboard
@app.route('/user_admin_dashboard')
def admin_dashboard():
    return render_template('user_admin_dashboard.html')

# Platform Management Dashboard
@app.route('/platform_management_dashboard')
def platform_management_dashboard():
    from entity.ReportEntity import ReportEntity  # Create this if not existing
    report_entity = ReportEntity()

    daily_reports = report_entity.get_daily_reports()
    weekly_reports = report_entity.get_weekly_reports()
    monthly_reports = report_entity.get_monthly_reports()

    reports = {
        'daily': daily_reports,
        'weekly': weekly_reports,
        'monthly': monthly_reports
    }

    return render_template('platform_management_dashboard.html', reports=reports)

# - - - - - - -

# Reports (Platform Management)
@app.route('/report_daily')
def report_daily():
    return render_template('report_daily.html')

@app.route('/report_weekly')
def report_weekly():
    return render_template('report_weekly.html')

@app.route('/report_monthly')
def report_monthly():
    return render_template('report_monthly.html')

if __name__ == '__main__':
    app.run(debug=True)
