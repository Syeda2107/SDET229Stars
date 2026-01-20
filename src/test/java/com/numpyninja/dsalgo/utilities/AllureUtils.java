package com.numpyninja.dsalgo.utilities;

import io.qameta.allure.Attachment;
public class AllureUtils {

        @Attachment(value = "{attachmentName}", type = "image/png")
        public static byte[] attachScreenshot(String attachmentName, byte[] screenshot) {
            return screenshot;
        }
    }

