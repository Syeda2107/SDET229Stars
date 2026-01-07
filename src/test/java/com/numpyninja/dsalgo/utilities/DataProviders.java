package com.numpyninja.dsalgo.utilities;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.numpyninja.dsalgo.pojo.DashboardData;
import org.testng.annotations.DataProvider;

import java.io.InputStream;
import java.util.List;
import java.util.stream.Collectors;

public class DataProviders {

    @DataProvider(name = "DashboardData")
    public static Object[][] getDashboardData() throws Exception {
        ObjectMapper mapper = new ObjectMapper();
        InputStream is = DataProviders.class.getClassLoader().getResourceAsStream("Testdata/DashboardData.json");
        List<DashboardData> allData = mapper.readValue(is, new TypeReference<List<DashboardData>>() {});

        // Filter only runnable tests (runMode = Y)
        List<DashboardData> runnableData = allData.stream()
                .filter(d -> "Y".equalsIgnoreCase(d.getRunMode()))
                .collect(Collectors.toList());

        return runnableData.stream()
                .map(d -> new Object[]{d})
                .toArray(Object[][]::new);
    }
}
