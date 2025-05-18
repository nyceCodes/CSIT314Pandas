from flask import render_template, request
from datetime import datetime
from entity.ReportEntity import ReportEntity

class DailyReportController:
    def report(self):
        selected_date = request.args.get('date')
        date_obj = datetime.strptime(selected_date, '%Y-%m-%d') if selected_date else datetime.today()

        logs = ReportEntity().get_logs_by_day(date_obj)

        return render_template("platform_management_dashboard.html",
                               logs=logs,
                               current_view='daily',
                               selected_date=date_obj.strftime('%Y-%m-%d'))

def register_daily_report_route(app):
    @app.route('/manager/reports/daily')
    def daily_report():
        return DailyReportController().report()
