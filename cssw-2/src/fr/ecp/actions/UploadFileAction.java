package fr.ecp.actions;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;

import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

import fr.ecp.cssw.hichaka.CsvHandler;
import fr.ecp.util.FilesUtil;

public class UploadFileAction extends ActionSupport implements ServletContextAware{

	private static final long serialVersionUID = -4748500436762141116L;

	@Override
	public String execute(){
		String fileName = getFileFileName();
		System.out.println("File Name is:"+fileName);
		System.out.println("File ContentType is:"+getFileContentType());
		System.out.println("Files Directory is:"+filesPath);	
		
		
		
		
		try {
			String path = context.getRealPath("") + File.separator + filesPath+ File.separator + fileName;
			System.out.println(path);
			FilesUtil.saveFile(getFile(), getFileFileName(), context.getRealPath("") + File.separator + filesPath);
			TtoLConverter(path);
		
		} catch (IOException e) {
			e.printStackTrace();
			return INPUT;
		}
		
		return SUCCESS;
		
	}
	
	private void TtoLConverter(String p) throws IOException {
	
			CsvHandler myCsv = new CsvHandler(p);
			System.out.println(myCsv.getPath());
			System.out.println(myCsv.getName());
			System.out.println(myCsv.getParentpath());
			myCsv.createTtl("v1", "v2", true);
			ArrayList<String> c = myCsv.readCsv();
			for (String s : c)
			{
				if(s.contains("EndOfPattern"))
					System.out.println();
				else 
					
				System.out.println(s);
			}
	}

	private File file;
	private String fileContentType;
	private String fileFileName;
	private String filesPath;
	private ServletContext context;
	public ArrayList<String> codeList = new ArrayList<String>();
	public String code;
	private String cityName;
	private String lang;
	private ArrayList<String> cities = new ArrayList<String>();;
	
	public String prepare() throws Exception {
		cities = new ArrayList<String>();
		if (cityName == null || cityName.trim().length() == 0){
			cities = new ArrayList<String>();
			cities.add("London");
			cities.add("Newyork");
			cities.add("Tokyo");
			return "INDEX";
		}
		return null;

	}
	
	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public void setFilesPath(String filesPath) {
		this.filesPath = filesPath;
	}

	@Override
	public void setServletContext(ServletContext ctx) {
		this.context=ctx;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public String getLang() {
		return lang;
	}
	public void setLang(String lang) {
		this.lang = lang;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public ArrayList<String> getCities() {
		return cities;
	}
	public void setCities(ArrayList<String> cities) {
		this.cities = cities;
	}
	
}
