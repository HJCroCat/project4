package com.koravle.domain;

import java.io.File;
import java.io.IOException;
import java.util.UUID;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

public class BoardVO {
	
	private int boardIdx;
	private String boardTitle;
	private String boardContent1;
	private String boardContent2;
	private String boardDate;
	private String boardCat;
	private String boardType;
	private int boardReco;
	private int boardViewCount;
	private String boardWriter;
	private String b_fname;
	private String b_realfname;
	private long b_fsize;
	private String boardKeyword;
	private int listF;
	private int listE;
	
	//***********************************************************
	MultipartFile file;	// write.jsp에 파일첨부시 name="file"과 동일한 변수명
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
		
		// 업로드 파일 접근
		if(! file.isEmpty()){
			// b_fname 사용자가 저장한 이름
			this.b_fname = file.getOriginalFilename();
			this.b_fsize = file.getSize();
			
			// b_realfname 실제 서버에 저장되는 이름
			UUID uuid = UUID.randomUUID();
			this.b_realfname= uuid.toString() + "_" + b_fname;
			
			//***********************************************
			// 해당 경로로 변경  D:\workspace\springWeb\koravle\koravle\src\main\webapp\resources\
			File f = new File("D:\\workspace\\springWeb\\koravle\\koravle\\src\\main\\webapp\\resources\\upload\\"+ b_realfname);
			
			try {
				file.transferTo(f);
				
			} catch (IllegalStateException e) {				
				e.printStackTrace();
			} catch (IOException e) {
				
				e.printStackTrace();
			}
		}
	}
	
	
	public int getBoardReco() {
		return boardReco;
	}
	public void setBoardReco(int boardReco) {
		this.boardReco = boardReco;
	}
	public int getBoardViewCount() {
		return boardViewCount;
	}
	public void setBoardViewCount(int boardViewCount) {
		this.boardViewCount = boardViewCount;
	}
	public String getBoardWriter() {
		return boardWriter;
	}
	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}
	public int getBoardIdx() {
		return boardIdx;
	}
	public void setBoardIdx(int boardIdx) {
		this.boardIdx = boardIdx;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent1() {
		return boardContent1;
	}
	public void setBoardContent1(String boardContent1) {
		this.boardContent1 = boardContent1;
	}
	public String getBoardContent2() {
		return boardContent2;
	}
	public void setBoardContent2(String boardContent2) {
		this.boardContent2 = boardContent2;
	}
	public String getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	public String getBoardCat() {
		return boardCat;
	}
	public void setBoardCat(String boardCat) {
		this.boardCat = boardCat;
	}
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public String getB_fname() {
		return b_fname;
	}
	public void setB_fname(String b_fname) {
		this.b_fname = b_fname;
	}
	public String getB_realfname() {
		return b_realfname;
	}
	public void setB_realfname(String b_realfname) {
		this.b_realfname = b_realfname;
	}
	public long getB_fsize() {
		return b_fsize;
	}
	public void setB_fsize(long b_fsize) {
		this.b_fsize = b_fsize;
	}
	public String getBoardKeyword() {
		return boardKeyword;
	}
	public void setBoardKeyword(String boardKeyword) {
		this.boardKeyword = boardKeyword;
	}
	
	public int getListF() {
		return listF;
	}
	public void setListF(int listF) {
		this.listF = listF;
	}
	public int getListE() {
		return listE;
	}
	public void setListE(int listE) {
		this.listE = listE;
	}
	
}

