package it.beije.malang.web;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class FileManager {
	public static void copyFile(File original, File copy) throws IOException {
		FileReader fileReader = new FileReader(original);
		FileWriter fileWriter = new FileWriter(copy);
		
		while (fileReader.ready()) {
			fileWriter.write((char)fileReader.read());
		}
		
		fileReader.close();
		fileWriter.close();
	}
	
	public static void copyFile(String path1, String path2) throws IOException {
		copyFile(new File(path1), new File(path2));
	}
	
	
	public static String getFileName(File f){
        String complete = f.getName();
        return complete.substring(0, complete.lastIndexOf("."));
    }
	
	public static String getFileName(String path) {
		return getFileName(new File(path));
	}

	
    public static String getFileExtension(File f){
        return f.getName().substring(f.getName().lastIndexOf(".") + 1);
    }

    public static String getFileExtension(String path) {
    	return getFileExtension(new File(path));
    }
    
    
    public static String getFileContent(File f) throws IOException {
        return new String(Files.readAllBytes(Paths.get(f.getPath())), StandardCharsets.UTF_8);
    }

    public static String getFileContent(String path) throws IOException {
    	return getFileContent(new File(path));
    }
    
    
    public static List<String> getFileAsRowList(File f) throws IOException {
        return  Files.readAllLines(Paths.get(f.getPath()), StandardCharsets.UTF_8);
    }
    
    public static List<String> getFileAsRowList(String path) throws IOException{
    	return getFileAsRowList(new File(path));
    }

    
	public static void writeRow(BufferedWriter writer, List<String> row, String separator) throws FileNotFoundException, IOException {
		StringBuilder sb = new StringBuilder();
		for(String el : row) 
			sb.append(el).append(separator);
		writer.write(sb.deleteCharAt(sb.length() - 1).append("\n").toString());
	}

	public static void writeRow(BufferedWriter writer, List<String> row) throws FileNotFoundException, IOException {
		writeRow(writer, row, "");
	}
	
	public static void writeRow(BufferedWriter writer, String[] row, String separator) throws FileNotFoundException, IOException {
		writeRow(writer, Arrays.asList(row), separator);
	}
	
	public static void writeRow(BufferedWriter writer, String[] row) throws FileNotFoundException, IOException {
		writeRow(writer, Arrays.asList(row), "");
	}
	
	public static void writeFile(File f, List<String[]> rows, String separator) throws FileNotFoundException, IOException {
		BufferedWriter writer = new BufferedWriter(new FileWriter(f));
		for(String[] row : rows)
			writeRow(writer, row, separator);
		writer.close();
	}
	
	public static void writeFile(File f, List<String[]> rows) throws FileNotFoundException, IOException {
		writeFile(f, rows, "");
	}

	
	public static String[] readRow(BufferedReader reader, String separator) throws IOException {
		return reader.readLine().split(separator);
	}

	public static String[] readRow(BufferedReader reader) throws IOException {
		return reader.readLine().split(" ");
	}
	
	public static List<String> readRowAsList(BufferedReader reader, String separator) throws IOException{
		return Arrays.asList(readRow(reader, separator));
	}

	public static List<String> readRowAsList(BufferedReader reader) throws IOException{
		return readRowAsList(reader, " ");
	}
	
	
	public static List<String> readFileAsList(File f) throws IOException{
		BufferedReader reader = new BufferedReader(new FileReader(f));
		List<String> res = new ArrayList<>();
		while(reader.ready()) 
			res.add(reader.readLine());
		reader.close();
		return res;
	}
	
	public static List<String> readFileAsList(String path) throws IOException{
		return readFileAsList(new File(path));
	}
	
	public static List<String[]> readFileAsRowList(File f, String separator) throws IOException{
		BufferedReader reader = new BufferedReader(new FileReader(f));
		List<String[]> res = new ArrayList<>();
		while(reader.ready())
			res.add(readRow(reader, separator));
		
		reader.close();
		return res;
	}

	public static List<String[]> readFileAsRowList(File f) throws IOException{
		return readFileAsRowList(f, " ");
	}
	
}