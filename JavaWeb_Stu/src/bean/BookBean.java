package bean;

public class BookBean {
	private String bookName="";
	private int bookNum=1;
	
	public BookBean() {
		super();
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookname) {
		this.bookName = bookname;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
}
