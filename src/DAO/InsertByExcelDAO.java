package DAO;

import BEAN.Sach;
import DB.ConnectionDB;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

public class InsertByExcelDAO {
    public static void importExcel(){
        InputStream inp = null;
        HSSFWorkbook wb = null;
        try {
            inp = new FileInputStream("D://Book2.xls");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }

        try {
            wb = new HSSFWorkbook(new POIFSFileSystem(inp));
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        Sheet sheet = wb.getSheetAt(0);
        for (int i = 1; i <= sheet.getLastRowNum(); i++) {
            Row row = sheet.getRow(i);
            String maSach = row.getCell(0).getNumericCellValue()+"";
            String tenSach = row.getCell(1).getStringCellValue();
            int loaiSach = (int) row.getCell(2).getNumericCellValue();
            int gia = (int) row.getCell(3).getNumericCellValue();
            int soLuong = (int) row.getCell(4).getNumericCellValue();
            String tenTacGia = row.getCell(5).getStringCellValue();
            String hinhAnh = row.getCell(6).getStringCellValue();
            String moTa = row.getCell(7).getStringCellValue();
            int khuyenMai = (int) row.getCell(8).getNumericCellValue();
            Date date = row.getCell(9).getDateCellValue();
            Sach sach = new Sach(maSach,tenSach,loaiSach,gia,soLuong,tenTacGia,hinhAnh,moTa,khuyenMai);
            try {
                insertProduct(sach,date);
            } catch (SQLException e) {
                e.printStackTrace();
                System.out.println(e.getMessage());
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                System.out.println(e.getMessage());
            }
        }
        try {
            wb.close();
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
    }
    public static void insertProduct(Sach sach,Date date) throws SQLException, ClassNotFoundException {
        String sql = "INSERT INTO sach(maSach,tenSach,loaiSach,gia,soLuong,tenTacGia,hinhAnh,moTa,khuyenMai,ngayXuatBan) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?)";
        Connection con = null;
        con = ConnectionDB.connect(  );
        PreparedStatement pre = con.prepareStatement(sql);
        pre.setString(1,sach.getMaSach());
        pre.setString(2,sach.getTenSach());
        pre.setInt(3,sach.getLoaiSach());
        pre.setInt(4,sach.getGia());
        pre.setInt(5,sach.getSoLuong());
        pre.setString(6,sach.getTenTacGia());
        pre.setString(7,sach.getHinhAnh());
        pre.setString(8,sach.getMoTa());
        pre.setInt(9,sach.getKhuyenMai());
        pre.setDate(10,new java.sql.Date(date.getTime()));
        try {
            pre.executeUpdate();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
        finally {
            ConnectionDB.pool.releaseConnection(con);
        }
    }
public static void insert(){

}
    public static void main(String[] args) {
        importExcel();
    }
}
