from db import get_connection

class ServiceCategoryEntity:
    def get_all_categories(self):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("SELECT * FROM service_categories")
        categories = cur.fetchall(); cur.close(); conn.close()
        return categories

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
        cur.execute("SELECT COUNT(*) FROM cleaningservices WHERE category_id = %s", (category_id,))
        count = cur.fetchone()[0]

        if count > 0:
            cur.close(); conn.close()
            raise Exception("Cannot delete category. It is currently in use by one or more cleaning services.")
        
        # Safe to delete
        cur.execute("DELETE FROM service_categories WHERE id = %s", (category_id,))
        conn.commit(); cur.close(); conn.close()

    def search_categories(self, keyword):
        conn = get_connection(); cur = conn.cursor(dictionary=True)
        cur.execute("SELECT * FROM service_categories WHERE serviceCategoryName LIKE %s", (f"%{keyword}%",))
        results = cur.fetchall(); cur.close(); conn.close()
        return results