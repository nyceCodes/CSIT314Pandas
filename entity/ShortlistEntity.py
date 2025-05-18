from db import get_connection

class ShortlistEntity:
    def get_shortlist(self, homeowner_id):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT ss.cleaner_id, ss.added_at, 
            up.name AS cleaner_name, 
            cs.cleaningServiceName AS service_type,
            cs.location AS service_location
            FROM service_shortlists ss
            LEFT JOIN user_profiles up ON ss.cleaner_id = up.id
            LEFT JOIN cleaningservices cs ON cs.cleaner_id = ss.cleaner_id
            WHERE ss.homeowner_id = %s
            ORDER BY ss.added_at DESC
        """, (homeowner_id,))
        shortlist = cur.fetchall(); cur.close(); conn.close()
        return shortlist

    def add_to_shortlist(self, homeowner_id, cleaner_id):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("INSERT INTO service_shortlists (homeowner_id, cleaner_id) VALUES (%s, %s)", (homeowner_id, cleaner_id))
        conn.commit(); cur.close(); conn.close()

    def search_shortlist(self, homeowner_id, keyword):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT ss.cleaner_id, ss.added_at, 
                up.name AS cleaner_name, 
                cs.cleaningServiceName AS service_type,
                cs.location AS service_location
            FROM service_shortlists ss
            LEFT JOIN user_profiles up ON ss.cleaner_id = up.id
            LEFT JOIN cleaningservices cs ON cs.cleaner_id = ss.cleaner_id
            WHERE ss.homeowner_id = %s
            AND (up.name LIKE %s OR cs.cleaningServiceName LIKE %s OR cs.location LIKE %s)
            ORDER BY ss.added_at DESC
        """, (homeowner_id, f"%{keyword}%", f"%{keyword}%", f"%{keyword}%"))
        results = cur.fetchall(); cur.close(); conn.close()
        return results

