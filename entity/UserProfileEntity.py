from db import get_connection

class UserProfileEntity:

    def get_all_profiles(self):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("SELECT * FROM user_profiles")
        profiles = cur.fetchall()
        cur.close(); conn.close()
        return profiles

    def get_profile_by_id(self, profile_id):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("SELECT * FROM user_profiles WHERE id = %s", (profile_id,))
        profile = cur.fetchone()
        cur.close(); conn.close()
        return profile

    def create_profile(self, name, email, dob, role, status):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("""
            INSERT INTO user_profiles (name, email, dob, role, status)
            VALUES (%s, %s, %s, %s, %s)
        """, (name, email, dob, role, status))
        conn.commit(); cur.close(); conn.close()

    def update_profile(self, profile_id, name, email, dob, role, status):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("""
            UPDATE user_profiles
            SET name=%s, email=%s, dob=%s, role=%s, status=%s
            WHERE id=%s
        """, (name, email, dob, role, status, profile_id))
        conn.commit(); cur.close(); conn.close()

    def suspend_profile(self, profile_id):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("""
            UPDATE user_profiles
            SET status='suspended'
            WHERE id=%s
        """, (profile_id,))

        cur.execute("""
            UPDATE user_accounts
            SET status = 'suspended'
            WHERE id = %s
        """, (profile_id,))
        conn.commit(); cur.close(); conn.close()

    def search_profiles(self, keyword):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        query = """
            SELECT * FROM user_profiles
            WHERE name LIKE %s OR email LIKE %s
        """
        like_term = f"%{keyword}%"
        cur.execute(query, (like_term, like_term))
        results = cur.fetchall()
        cur.close(); conn.close()
        return results
