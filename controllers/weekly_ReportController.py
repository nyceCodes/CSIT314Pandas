from flask import render_template
from datetime import datetime, timedelta
from entity.ReportEntity import ReportEntity

class WeeklyReportController:
    def report(self):
        today = datetime.today()
        start_of_week = today - timedelta(days=today.weekday())  # Monday
        logs = ReportEntity().get_logs_by_week(start_of_week)

        return render_template("platform_management_dashboard.html",
                               logs=logs,
                               current_view='weekly',
                               selected_week_start=start_of_week.strftime('%Y-%m-%d'))

def register_weekly_report_route(app):
    @app.route('/manager/reports/weekly')
    def weekly_report():
        return WeeklyReportController().report()
