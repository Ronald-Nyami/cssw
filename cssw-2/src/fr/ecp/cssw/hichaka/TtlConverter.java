package fr.ecp.cssw.hichaka;

import java.io.IOException;
import java.util.ArrayList;

import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;

import fr.ecp.actions.UploadFileAction;


public class TtlConverter {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		//		Display display = new Display();
		//		Shell shell = new Shell(display);
		//		shell.setText("CSV to TTL Converter");
		//		shell.open();
		UploadFileAction ufa = new UploadFileAction();
		//String p = "C:\\Users\\evan\\Desktop\\desktop\\cssw\\Convertisseur CSV-RDF\\volcanos\\volcanos.csv";
        String p = ufa.getFileFileName();
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

}
