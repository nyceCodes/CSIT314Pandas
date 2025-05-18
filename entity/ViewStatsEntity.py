from db import get_connection

class ViewStatsEntity:
    def get_service_views(self, cleaner_id):
        conn = get_connection()
        cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT COUNT(*) as view_count 
            FROM service_views 
            WHERE cleaner_id = %s
        """, (cleaner_id,))
        result = cur.fetchone()
        cur.close()
        conn.close()
        return result['view_count']

    def get_shortlist_count(self, cleaner_id):
        conn = get_connection()
        cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT COUNT(*) as shortlist_count 
            FROM service_shortlists 
            WHERE cleaner_id = %s
        """, (cleaner_id,))
        result = cur.fetchone()
        cur.close()
        conn.close()
        return result['shortlist_count']

    def increment_profile_view(self, cleaner_id):
        conn = get_connection()
        cur = conn.cursor()
        cur.execute("""
            INSERT INTO service_views (cleaner_id) 
            VALUES (%s)
        """, (cleaner_id,))
        conn.commit()
        cur.close()
        conn.close()
