//package com.laptrinhoop.dto;
//
//import com.vietanlife.renewal.constants.Constant;
//import com.vietanlife.renewal.constants.enums.EnumPremiumType;
//import com.vietanlife.renewal.constants.enums.PaymentDocumentType;
//import com.vietanlife.renewal.constants.enums.PaymentType;
//import com.vietanlife.renewal.model.Transaction;
//import com.vietanlife.renewal.utils.DateTimeUtil;
//import org.apache.commons.lang3.StringUtils;
//import org.apache.poi.ss.usermodel.*;
//import org.apache.poi.xssf.usermodel.*;
//
//import java.io.FileOutputStream;
//import java.util.List;
//import java.util.Objects;
//
//public class PayPremiumExporter {
//    private XSSFWorkbook workbook;
//    private XSSFSheet sheet;
//    private List<Transaction> transactions;
//
//    public PayPremiumExporter(List<Transaction> items) {
//        this.transactions = items;
//        workbook = new XSSFWorkbook();
//    }
//
//    private void writeHeaderLine() {
//        sheet = workbook.createSheet("Pay Premium");
//        CellStyle style = workbook.createCellStyle();
//        XSSFFont font = workbook.createFont();
//        font.setFontHeightInPoints((short) 10);
//        font.setFontName("Arial");
//        font.setColor(IndexedColors.BLACK.getIndex());
//        font.setBold(true);
//        font.setItalic(false);
//        style.setFillForegroundColor(IndexedColors.GREY_50_PERCENT.index);
//        style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
//        style.setFont(font);
//
//        XSSFRow row = sheet.createRow(0);
//        XSSFCell cell;
//        int cellHeaderCount = 0;
//        List<String> headers = Constant.arrayHeaderReportPremium;
//
//        for (String h : headers) {
//            cell = row.createCell(cellHeaderCount);
//            cell.setCellValue(h);
//            cell.setCellStyle(style);
//            cellHeaderCount++;
//        }
//
//    }
//
//
//    private void writeDataLines() {
//        XSSFRow row;
//        int i = 1;
//        for (Transaction d : transactions) {
//            row = sheet.createRow(i);
//            setCells(i, row, d);
//            i++;
//        }
//
//    }
//
//    private void setCells(int i, XSSFRow row, Transaction item) {
//        XSSFCell cell;
//
//        cell = row.createCell(0);
//        cell.setCellValue(i);
//
//        cell = row.createCell(1);
//        cell.setCellValue(item.getTransactionId());
//
//        cell = row.createCell(2);
//        cell.setCellValue(item.getPartner().getMerchantId());
//
//        cell = row.createCell(3);
//        cell.setCellValue(item.getPartnerTransactionId());
//
//        cell = row.createCell(4);
//        cell.setCellValue(item.getPolicyNumber());
//
//        cell = row.createCell(5);
//        cell.setCellValue(item.getAmount().longValue());
//
//        cell = row.createCell(6);
//        EnumPremiumType primiumType = EnumPremiumType.fetchValue(item.getPremiumType());
//        cell.setCellValue(Objects.isNull(primiumType) ? null : primiumType.getReportName());
//
//        cell = row.createCell(7);
//        cell.setCellValue(PaymentDocumentType.POLICY_PAYMENT.name().equals(item.getPaymentDocumentType())
//                ? PaymentDocumentType.POLICY_PAYMENT.getNamePaymentType()
//                : PaymentDocumentType.DOCUMENT_TYPE.getNamePaymentType());
//
//        cell = row.createCell(8);
//        cell.setCellValue(PaymentType.ONLINE_PAYMENT.name().equals(item.getPaymentType())
//                ? PaymentType.ONLINE_PAYMENT.getNameValue()
//                : PaymentType.ATTACH_FILE.getNameValue());
//
//        cell = row.createCell(9);
//        cell.setCellValue(DateTimeUtil.localDateTimeToDateWithSlash(
//                item.getCreatedDate(),
//                Constant.DateTimeFormat.DD_MM_YYYY_HH_MM_SS
//                ));
//
//        cell = row.createCell(10);
//        cell.setCellValue(item.getStatus().name());
//
//        cell = row.createCell(11);
//        cell.setCellValue(StringUtils.defaultString(item.getStatusCore(),""));
//
//    }
//
//    public String exportDate(String pathFileName) {
//        try (FileOutputStream outPut = new FileOutputStream(pathFileName)) {
//            this.writeHeaderLine();
//            this.writeDataLines();
//            workbook.write(outPut);
//            workbook.close();
//            outPut.close();
//            return "";
//        } catch (Exception ex) {
//            return ex.getMessage();
//        }
//
//    }
//}
