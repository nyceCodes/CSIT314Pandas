from db import get_connection

class ConfirmedMatchEntity:
    def get_confirmed_matches_by_cleaner_id(self, cleaner_id):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT cm.*, up.name AS client_name
            FROM confirmed_matches cm
            JOIN user_profiles up ON cm.home_owner_id = up.id
            WHERE cm.cleaner_id = %s
        """, (cleaner_id,))
        matches = cur.fetchall()
        cur.close(); conn.close()
        return matches

    def get_matches_by_homeowner(self, home_owner_id):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT cm.*, up.name AS cleaner_name
            FROM confirmed_matches cm
            LEFT JOIN user_profiles up ON cm.cleaner_id = up.id
            WHERE cm.home_owner_id = %s
        """, (home_owner_id,))
        matches = cur.fetchall(); cur.close(); conn.close()
        return matches

    def search_matches(self, user_id, keyword, role='cleaner'):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        if role == 'cleaner':
            cur.execute("""
                SELECT cm.*, up.name AS home_owner_name
                FROM confirmed_matches cm
                LEFT JOIN user_profiles up ON cm.home_owner_id = up.id
                WHERE cm.cleaner_id = %s AND cm.service_name LIKE %s
            """, (user_id, f"%{keyword}%",))
        else:
            cur.execute("""
                SELECT cm.*, up.name AS cleaner_name
                FROM confirmed_matches cm
                LEFT JOIN user_profiles up ON cm.cleaner_id = up.id
                WHERE cm.home_owner_id = %s AND cm.service_name LIKE %s
            """, (user_id, f"%{keyword}%",))
        results = cur.fetchall(); cur.close(); conn.close()
        return results
