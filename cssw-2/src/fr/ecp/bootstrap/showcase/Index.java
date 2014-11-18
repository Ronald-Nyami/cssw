 

package fr.ecp.bootstrap.showcase;

import org.apache.struts2.convention.annotation.ParentPackage;

import com.opensymphony.xwork2.ActionSupport;

@ParentPackage(value = "showcase")
public class Index extends ActionSupport {

    private static final long serialVersionUID = 7353477345330099548L;

    public String execute() throws Exception {

        addActionError("CSV TO TTL started with Error !");
        addActionMessage("Welcome to CSVTOTTL.");
        addFieldError("error", "OOPSSS Error!");
        return SUCCESS;
    }
}
