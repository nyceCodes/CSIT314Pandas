from db import get_connection
from datetime import date, timedelta

class ReportEntity:
    def log_action(self, user_id, action, cleaner_id=None, home_owner_id=None, service_name=None, location=None):
        conn = get_connection()
        cur = conn.cursor()
        cur.execute("""
            INSERT INTO activity_logs 
            (user_id, action, cleaner_id, home_owner_id, cleaningServiceName, location, timestamp)
            VALUES (%s, %s, %s, %s, %s, %s, NOW())
        """, (user_id, action, cleaner_id, home_owner_id, service_name, location))
        conn.commit()
        cur.close()
        conn.close()

    def enrich_logs_with_roles(self, logs):
        for log in logs:
            if log.get('cleaner_id') and not log.get('home_owner_id'):
                log['role'] = 'cleaner'
            elif log.get('home_owner_id'):
                log['role'] = 'home_owner'
            else:
                log['role'] = 'unknown'
        return logs

    def get_logs_by_day(self, date_obj):
        conn = get_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("""
            SELECT al.*, 
                   cleaner.name AS cleaner_name, 
                   home_owner.name AS home_owner_name
            FROM activity_logs al
            LEFT JOIN user_profiles cleaner ON al.cleaner_id = cleaner.id
            LEFT JOIN user_profiles home_owner ON al.home_owner_id = home_owner.id
            WHERE DATE(al.timestamp) = %s
            ORDER BY al.timestamp DESC
        """, (date_obj.strftime('%Y-%m-%d'),))
        results = self.enrich_logs_with_roles(cursor.fetchall())
        cursor.close()
        conn.close()
        return results

    def get_logs_by_week(self, start_date):
        end_date = start_date + timedelta(days=6)
        conn = get_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("""
            SELECT al.*, 
                   cleaner.name AS cleaner_name, 
                   home_owner.name AS home_owner_name
            FROM activity_logs al
            LEFT JOIN user_profiles cleaner ON al.cleaner_id = cleaner.id
            LEFT JOIN user_profiles home_owner ON al.home_owner_id = home_owner.id
            WHERE DATE(al.timestamp) BETWEEN %s AND %s
            ORDER BY al.timestamp DESC
        """, (start_date.strftime('%Y-%m-%d'), end_date.strftime('%Y-%m-%d')))
        results = self.enrich_logs_with_roles(cursor.fetchall())
        cursor.close()
        conn.close()
        return results

    def get_logs_by_month(self, month, year):
        conn = get_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("""
            SELECT al.*, 
                   cleaner.name AS cleaner_name, 
                   home_owner.name AS home_owner_name
            FROM activity_logs al
            LEFT JOIN user_profiles cleaner ON al.cleaner_id = cleaner.id
            LEFT JOIN user_profiles home_owner ON al.home_owner_id = home_owner.id
            WHERE MONTH(al.timestamp) = %s AND YEAR(al.timestamp) = %s
            ORDER BY al.timestamp DESC
        """, (month, year))
        results = self.enrich_logs_with_roles(cursor.fetchall())
        cursor.close()
        conn.close()
        return results

    def get_daily_reports(self):
        return self.get_logs_by_day(date.today())

    def get_weekly_reports(self):
        today = date.today()
        start_of_week = today - timedelta(days=today.weekday())  # Monday start
        return self.get_logs_by_week(start_of_week)

    def get_monthly_reports(self):
        today = date.today()
        return self.get_logs_by_month(today.month, today.year)
