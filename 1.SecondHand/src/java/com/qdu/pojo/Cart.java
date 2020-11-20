package com.qdu.pojo;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 *
 * @author 张本腾
 */

@Entity
@Table(name="Cart_Table")
public class Cart implements Serializable{
    
    @Id
    private String Users_ID;
    @Id
    private String Module_ID;

    public Cart() {
    }
    
    public Cart(String Users_ID, String Module_ID) {
        this.Users_ID = Users_ID;
        this.Module_ID = Module_ID;
    }

        public String getUsers_ID() {
            return Users_ID;
        }

        public void setUser_ID(String Users_ID) {
            this.Users_ID = Users_ID;
        }

        public String getModule_ID() {
            return Module_ID;
        }

        public void setModule_ID(String Module_ID) {
            this.Module_ID = Module_ID;
        }

}
