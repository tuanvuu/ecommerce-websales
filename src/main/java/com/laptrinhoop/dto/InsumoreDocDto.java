//package com.laptrinhoop.dto;
//
//import com.mox.core.contract.openapi.insuredoc.v1.client.model.ModelResponse;
//import lombok.AccessLevel;
//import lombok.Builder;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//import lombok.experimental.FieldDefaults;
//
//import java.io.File;
//
//
//@NoArgsConstructor(access = AccessLevel.PRIVATE)
//public class InsumoreDocDto {
//
//    @Data
//    @FieldDefaults(level = AccessLevel.PRIVATE)
//    @Builder
//    public static class UploadAttachmentRequest {
//        File file;
//    }
//
//
//    @Data
//    @FieldDefaults(level = AccessLevel.PRIVATE)
//
//    public static class UploadAttachmentResponse {
//        int attachFileId;
//        String orgFileName;
//
//        private UploadAttachmentResponse(ModelResponse model) {
//            this.attachFileId = model.getAttachFileId();
//            this.orgFileName = model.getOrgFileName();
//        }
//
//        public static UploadAttachmentResponse from(ModelResponse model) {
//            return new UploadAttachmentResponse(model);
//        }
//    }
//}
