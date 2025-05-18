from flask import render_template
from datetime import datetime
from entity.ReportEntity import ReportEntity

class MonthlyReportController:
    def report(self):
        today = datetime.today()
        logs = ReportEntity().get_logs_by_month(today.month, today.year)

        return render_template("platform_management_dashboard.html",
                               logs=logs,
                               current_view='monthly',
                               selected_month=today.strftime('%B %Y'))

def register_monthly_report_route(app):
    @app.route('/manager/reports/monthly')
    def monthly_report():
        return MonthlyReportController().report()
