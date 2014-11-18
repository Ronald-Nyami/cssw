 
package fr.ecp.bootstrap.showcase;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.ParentPackage;

@ParentPackage(value = "showcase")
public class Echo extends ActionSupport {

    private String echo;

    public String execute() throws Exception {

        addActionMessage("Welcome "+echo+"!");

        return SUCCESS;
    }

    public String getEcho() {
        return echo;
    }

    public void setEcho(String echo) {
        this.echo = echo;
    }
}
