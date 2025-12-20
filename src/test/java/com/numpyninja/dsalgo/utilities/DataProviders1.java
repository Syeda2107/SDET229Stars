package com.numpyninja.dsalgo.utilities;

import com.numpyninja.dsalgo.pojo.DashboardData;
import org.testng.annotations.DataProvider;

import java.util.ArrayList;
import java.util.List;

public class DataProviders {

    private static final String EXCEL_PATH = Constants.DASHBOARD_EXCEL;

    @DataProvider(name = "DashboardData")
    public static Object[][] getDashboardData() {
        List<DashboardData> dataList = ExcelUtils.readExcel(EXCEL_PATH, "Dashboard", DashboardData.class);
        List<Object[]> runnableData = new ArrayList<>();

        for (DashboardData data : dataList) {
            if ("Y".equalsIgnoreCase(data.getRunMode())) {
                runnableData.add(new Object[]{data});
            }
        }

        return runnableData.toArray(new Object[0][0]);
    }
}
