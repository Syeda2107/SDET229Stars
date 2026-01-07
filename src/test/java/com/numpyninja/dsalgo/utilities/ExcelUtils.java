package com.numpyninja.dsalgo.utilities;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.FileInputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public class ExcelUtils {

    public static <T> List<T> readExcel(String filePath, String sheetName, Class<T> clazz) {

        List<T> dataList = new ArrayList<>();

        try (FileInputStream fis = new FileInputStream(filePath);
             Workbook workbook = new XSSFWorkbook(fis)) {

            Sheet sheet = workbook.getSheet(sheetName);
            if (sheet == null) {
                throw new RuntimeException("Sheet not found: " + sheetName);
            }

            Row headerRow = sheet.getRow(0);
            if (headerRow == null) {
                throw new RuntimeException("Header row is missing in sheet: " + sheetName);
            }

            int rowCount = sheet.getPhysicalNumberOfRows();
            int colCount = headerRow.getPhysicalNumberOfCells();

            for (int i = 1; i < rowCount; i++) {

                Row row = sheet.getRow(i);
                if (row == null) continue;

                T obj = clazz.getDeclaredConstructor().newInstance();

                for (int j = 0; j < colCount; j++) {

                    String header = headerRow.getCell(j).getStringCellValue()
                            .trim()
                            .replace(" ", ""); // safety for headers like "Page Title"

                    Cell cell = row.getCell(j, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
                    String cellValue = getCellValueAsString(cell);

                    String setterName = "set" + header;

                    try {
                        Method setter = clazz.getMethod(setterName, String.class);
                        setter.invoke(obj, cellValue);
                    } catch (NoSuchMethodException e) {
                        // Ignore unmapped columns (real-time standard)
                    }
                }

                dataList.add(obj);
            }

        } catch (Exception e) {
            throw new RuntimeException("Failed to read Excel data", e);
        }

        return dataList;
    }

    // ✅ Safe cell value reader
    private static String getCellValueAsString(Cell cell) {

        if (cell == null) return "";

        switch (cell.getCellType()) {
            case STRING:
                return cell.getStringCellValue().trim();
            case NUMERIC:
                if (DateUtil.isCellDateFormatted(cell)) {
                    return cell.getDateCellValue().toString();
                }
                return String.valueOf((long) cell.getNumericCellValue());
            case BOOLEAN:
                return String.valueOf(cell.getBooleanCellValue());
            case FORMULA:
                return cell.getCellFormula();
            case BLANK:
            default:
                return "";
        }
    }
}
