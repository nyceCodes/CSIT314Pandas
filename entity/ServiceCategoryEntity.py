from db import get_connection

class ServiceCategoryEntity:
    def get_all_categories(self):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("SELECT * FROM service_categories")
        categories = cur.fetchall(); cur.close(); conn.close()
        return categories

    def get_category_by_id(self, category_id):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("SELECT * FROM service_categories WHERE id = %s", (category_id,))
        cat = cur.fetchone(); cur.close(); conn.close()
        return cat

    def create_category(self, name, description):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("INSERT INTO service_categories (serviceCategoryName, serviceCategoryDescription) VALUES (%s, %s)", (name, description))
        conn.commit(); cur.close(); conn.close()

    def update_category(self, category_id, name, description):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("UPDATE service_categories SET serviceCategoryName=%s, serviceCategoryDescription=%s WHERE id=%s", (name, description, category_id))
        conn.commit(); cur.close(); conn.close()

    def delete_category(self, category_id):
        conn = get_connection(); cur = conn.cursor()
        cur.execute("DELETE FROM service_categories WHERE id = %s", (category_id,))
        conn.commit(); cur.close(); conn.close()

    def search_categories(self, keyword):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("SELECT * FROM service_categories WHERE serviceCategoryName LIKE %s", (f"%{keyword}%",))
        results = cur.fetchall(); cur.close(); conn.close()
        return results