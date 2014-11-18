package fr.ecp.cssw.hichaka;
import java.io.FileNotFoundException;


import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import au.com.bytecode.opencsv.CSVReader;

public class CsvHandler {
	private String path;
	public int numberColumns;

	// Getters and Setters
	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}


	// Business methods
	public String getParentpath()
	{
		String parent = "";
		String temp = this.getPath().replace("\\", "_");
		String[] temp2 = temp.split("_");

		for (int i = 0; i<temp2.length - 1; i++)
			parent += temp2[i] + "\\";

		return parent;
	}

	public String getName()
	{
		String temp = this.getPath().replace("\\", "_");
		String[] temp2 = temp.split("_");
		String name = "";

		for (String s: temp2){
			name = s;
		}
		return name;
	}

	public ArrayList<String> readCsv() throws IOException
	{
		CSVReader reader = null;
		String[] nextLine;
		ArrayList<String> array = new ArrayList<String>();

		try {
			reader = new CSVReader(new FileReader(this.getPath()));
		}
		catch (FileNotFoundException e) {
			e.printStackTrace();
		}

		while ((nextLine = reader.readNext()) != null) {
			for (int i = 0; i < nextLine.length; i++) {
				array.add(nextLine[i].toString());
			}
			this.numberColumns = nextLine.length;
		}
		reader.close();

		return array;
	}

	public void createTtl(String prefix1, String prefix2, boolean header)
	{
		String ttlName = this.getParentpath() + this.getName().replace(".csv", ".ttl");
		PrintWriter writer = null;
		ArrayList<String> content = new ArrayList<String>();
		ArrayList<String> headContent = new ArrayList<String>();
		int k = 0;

		try {
			content = this.readCsv();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		try {
			writer = new PrintWriter(ttlName, "UTF-8");
		} catch (FileNotFoundException | UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if(header)
			for (int i = 0; i < this.numberColumns; i++)
				headContent.add(i, content.get(i));

		//Addition of the prefixes
		writer.println("@prefix " + prefix1 + ": <http://localhost:9091/project/volcanos/source/> .");
		writer.println("@prefix " + prefix2 + ": <http://localhost:9091/project/volcanos/source#> .");
		writer.println("");

		//Addition of the rows 
		//Check if the CSV contains headers or not
		for (int i = 1; i < content.size()/this.numberColumns; i++)
		{
			writer.println(prefix1+":"+Integer.toString(i) + " a " + prefix2 + ":" + this.getName().replace(".", "-") + " ;");
			for(int j = 0; j < this.numberColumns; j++) {
				if(j == headContent.size() - 1)
					writer.println("\t" + prefix2 + ":" + headContent.get(j) + " \"" + content.get(k + this.numberColumns) + "\" .\n");
				else
					writer.println("\t" + prefix2 + ":" + headContent.get(j) + " \"" + content.get(k + this.numberColumns) + "\" ;");
				k++;
			}
		}
		writer.close();
	}


	// Constructor
	public CsvHandler(String p)
	{
		this.setPath(p);
	}
}
