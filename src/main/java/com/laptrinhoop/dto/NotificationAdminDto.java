//package com.laptrinhoop.dto;
//
//import com.fasterxml.jackson.annotation.JsonInclude;
//import com.mox.notifications.contract.openapi.notificationadmin.v1.client.model.NotificationTemplateSettingsInfoDto;
//import com.vietanlife.renewal.configuration.properties.TemplateSettingProperties;
//import com.vietanlife.renewal.constants.error.GeneralResultCode;
//import com.vietanlife.renewal.exception.BadRequestException;
//import lombok.AllArgsConstructor;
//import lombok.Builder;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//import lombok.extern.slf4j.Slf4j;
//
//import java.util.Objects;
//import java.util.UUID;
//
//public class NotificationAdminDto {
//
//
//    @Data
//    @AllArgsConstructor
//    @NoArgsConstructor
//    @Builder
//    @Slf4j
//    @JsonInclude(JsonInclude.Include.NON_NULL)
//    public static class GetTemplateRequest {
//        private String bizEventType;
//        private String transactionCode;
//        private String letterCode;
//
//        public static GetTemplateRequest from(Integer item, TemplateSettingProperties.Template template) {
//            if (Objects.isNull(item)) {
//                log.error("[GetTemplateRequest] from -- FunctionType is null or empty");
//                throw BadRequestException.from(GeneralResultCode.INVALID_ITEM, "function type is null or empty");
//            }
//            if (Objects.isNull(template)) {
//                log.error("[GetTemplateRequest] from -- load template setting is null or empty");
//                throw BadRequestException.from(GeneralResultCode.INVALID_ITEM, "load template setting is null or empty");
//            }
//
//            return new GetTemplateRequest().builder()
//                    .bizEventType(template.getBizEventCode().get(item))
//                    .transactionCode(template.getTransactionCode().get(item))
//                    .build();
//
//        }
//
//    }
//
//    @Data
//    @AllArgsConstructor
//    @Builder
//    @JsonInclude(JsonInclude.Include.NON_NULL)
//    public static class GetTemplateResponse {
//        private UUID templateId;
//        private String bizEventType;
//        private String diliveryChanel;
//
//        private GetTemplateResponse(NotificationTemplateSettingsInfoDto item) {
//            this.templateId = item.getTemplateId();
//            this.diliveryChanel = item.getDeliveryChannel();
//            this.bizEventType = item.getBizEventType();
//        }
//
//        public static GetTemplateResponse from(NotificationTemplateSettingsInfoDto item) {
//            return new GetTemplateResponse(item);
//        }
//
//    }
//
//
//}
