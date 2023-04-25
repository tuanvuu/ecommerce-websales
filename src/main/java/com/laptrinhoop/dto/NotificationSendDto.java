//package com.laptrinhoop.dto;
//
//import com.mox.notifications.contract.openapi.notificationcentre.v1.client.model.NotificationSendResponseVO;
//import lombok.AllArgsConstructor;
//import lombok.Builder;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//
//import java.util.List;
//import java.util.Map;
//
//public class NotificationSendDto {
//
//    @Data
//    @AllArgsConstructor
//    @NoArgsConstructor
//    @Builder
//    public static class SendRequest {
//        private String username;
//        private String templateId;
//        private String bizEventCode;
//        private String email;
//        private String phoneNumber;
//        private String playerId;
//        private boolean isSendAttachment;
//        private Map<String, String> replateContent;
//        private List<AttachMentInfo> attachMentInfos;
//    }
//
//    @Data
//    @AllArgsConstructor
//    @NoArgsConstructor
//    @Builder
//    public static class AttachMentInfo {
//        private String fileId;
//        private String fileName;
//    }
//
//
//
//    @Data
//    @AllArgsConstructor
//    @NoArgsConstructor
//    @Builder
//    public static class SendResponse {
//        private int isSeen;
//        private String message;
//
//        private SendResponse(NotificationSendResponseVO item) {
//            this.isSeen = item.getIsSend();
//            this.message = item.getMessage();
//        }
//
//        public static SendResponse from(NotificationSendResponseVO item) {
//            return new SendResponse(item);
//        }
//
//    }
//}
