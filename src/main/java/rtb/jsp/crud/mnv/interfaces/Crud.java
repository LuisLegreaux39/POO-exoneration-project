package rtb.jsp.crud.mnv.interfaces;

import java.util.List;

public interface Crud<T> {
        public List<T> findAll();
        public T findById(int id);
        public boolean add(T record);
        public boolean update(T record);
        public boolean deleteById(int id);
}
