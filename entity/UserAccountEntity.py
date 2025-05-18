from db import get_connection

class UserAccountEntity:
    def get_all_users(self):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("SELECT * FROM user_accounts")
        users = cur.fetchall()
        cur.close(); conn.close()
        return users

    def get_user_by_id(self, user_id):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("SELECT * FROM user_accounts WHERE id = %s", (user_id,))
        user = cur.fetchone()
        cur.close(); conn.close()
        return user

    def create_user(self, username, password, role):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("INSERT INTO user_accounts (username, password, role) VALUES (%s, %s, %s)", (username, password, role))
        conn.commit(); cur.close(); conn.close()

    def update_user(self, user_id, username, role, status):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("UPDATE user_accounts SET username=%s, role=%s, status=%s WHERE id=%s", (username, role, status, user_id))
        conn.commit(); cur.close(); conn.close()

    def suspend_user(self, user_id):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("UPDATE user_accounts SET status='suspended' WHERE id=%s", (user_id,))
        conn.commit(); cur.close(); conn.close()

    def search_users(self, keyword):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("SELECT * FROM user_accounts WHERE username LIKE %s", (f"%{keyword}%",))
        results = cur.fetchall(); cur.close(); conn.close()
        return results

    def authenticate_user(self, username, password, role):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT ua.*, up.name
            FROM user_accounts ua
            LEFT JOIN user_profiles up ON ua.id = up.id
            WHERE ua.username=%s AND ua.password=%s AND ua.role=%s AND ua.status='active'
        """, (username, password, role))
        user = cur.fetchone()
        cur.close(); conn.close()
        return user

    def search_cleaners(self, keyword):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT * FROM user_accounts
            WHERE role = 'cleaner' AND username LIKE %s
        """, (f"%{keyword}%",))
        results = cur.fetchall(); cur.close(); conn.close()
        return results

    def get_all_cleaners(self):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT ua.id, ua.username, ua.role, ua.status, up.name, up.location
            FROM user_accounts ua
            JOIN user_profiles up ON ua.id = up.id
            WHERE ua.role = 'cleaner'
        """)
        data = cur.fetchall(); cur.close(); conn.close()
        return data


    def get_user_by_id_with_location(self, user_id):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT 
            ua.id, ua.username, ua.role, ua.status,
            up.name, up.location, up.email, up.dob
            FROM user_accounts ua
            JOIN user_profiles up ON ua.id = up.id
            WHERE ua.id = %s
        """, (user_id,))
        user = cur.fetchone(); cur.close(); conn.close()
        return user

    def create_new_account(self, username, password, role, status='active'):
        conn = get_connection()
        cursor = conn.cursor()
        cursor.execute("""
            INSERT INTO user_accounts (username, password, role, status)
            VALUES (%s, %s, %s, %s)
        """, (username, password, role, status))
        conn.commit()
        cursor.close()
        conn.close()
