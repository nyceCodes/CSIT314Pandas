from db import get_connection

class CleanerServiceEntity:
    def get_services_by_cleaner(self, cleaner_id):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT cs.*, sc.serviceCategoryName
            FROM cleaningservices cs
            JOIN service_categories sc ON cs.category_id = sc.id
            WHERE cs.cleaner_id = %s
        """, (cleaner_id,))
        services = cur.fetchall()
        cur.close(); conn.close()
        return services

    def get_service_by_id(self, service_id):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("SELECT * FROM cleaningservices WHERE id = %s", (service_id,))
        service = cur.fetchone()
        cur.close(); conn.close()
        return service

    def create_service(self, cleaner_id, name, description, price, category_id, date_available, location):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("""
            INSERT INTO cleaningservices (cleaner_id, cleaningServiceName, cleaningServiceDescription, cleaningServicePrice, category_id, date_available, location)
            VALUES (%s, %s, %s, %s, %s, %s, %s)
        """, (cleaner_id, name, description, price, category_id, date_available, location))
        conn.commit(); cur.close(); conn.close()

    def update_service(self, service_id, cleaningServiceName, cleaningServiceDescription, cleaningServicePrice, category_id, date_available, location):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("""
            UPDATE cleaningservices
            SET cleaningServiceName=%s, cleaningServiceDescription=%s, cleaningServicePrice=%s, category_id=%s, date_available=%s, location=%s
            WHERE id=%s
        """, (cleaningServiceName, cleaningServiceDescription, cleaningServicePrice, category_id, date_available, location, service_id))
        conn.commit(); cur.close(); conn.close()

    def delete_service(self, sid):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("DELETE FROM cleaningservices WHERE id = %s", (sid,))
        conn.commit(); cur.close(); conn.close()

    def search_myservices(self, cleaner_id, keyword):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT cs.*, sc.serviceCategoryName
            FROM cleaningservices cs
            JOIN service_categories sc ON cs.category_id = sc.id
            WHERE cs.cleaner_id = %s AND (cs.cleaningServiceName LIKE %s OR cs.cleaningServiceDescription LIKE %s)
        """, (cleaner_id, f"%{keyword}%", f"%{keyword}%"))
        results = cur.fetchall()
        cur.close(); conn.close()
        return results

    def search_available_services(self, keyword):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("""
            SELECT * FROM cleaningservices
            WHERE cleaningServiceName LIKE %s OR cleaningServiceDescription LIKE %s
        """, (f"%{keyword}%", f"%{keyword}%"))
        results = cur.fetchall(); cur.close(); conn.close()
        return results

    def search_services(self, name="", location="", date=""):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        query = """
            SELECT cs.*, up.name AS cleaner_name
            FROM cleaningservices cs
            JOIN user_profiles up ON cs.cleaner_id = up.id
            WHERE 1=1
        """
        params = []

        if name:
            query += " AND cs.cleaningServiceName LIKE %s"
            params.append(f"%{name}%")
        if location:
            query += " AND cs.location LIKE %s"
            params.append(f"%{location}%")
        if date:
            query += " AND cs.date_available = %s"
            params.append(date)
        
        cur.execute(query, params)
        results = cur.fetchall(); cur.close(); conn.close()
        return results

    def search_all_services(self, name='', location='', date=''):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        
        query = """
            SELECT cs.*, up.name AS cleaner_name
            FROM cleaningservices cs
            JOIN user_profiles up ON cs.cleaner_id = up.id
            WHERE 1=1
        """
        params = []

        if name:
            query += " AND cs.cleaningServiceName LIKE %s"
            params.append(f"%{name}%")
        if location:
            query += " AND cs.location LIKE %s"
            params.append(f"%{location}%")
        if date:
            query += " AND cs.date_available = %s"
            params.append(date)

        cur.execute(query, params)
        results = cur.fetchall(); cur.close(); conn.close()
        return results
    
    def get_cleaner_service_views(cleaner_id):
        conn = get_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT COUNT(*) FROM service_views WHERE cleaner_id = %s", (cleaner_id,))
        count = cursor.fetchone()[0]
        cursor.close(); conn.close()
        return count

    def get_cleaner_shortlist_count(cleaner_id):
        conn = get_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT COUNT(*) FROM service_shortlists WHERE cleaner_id = %s", (cleaner_id,))
        count = cursor.fetchone()[0]
        cursor.close(); conn.close()
        return count
