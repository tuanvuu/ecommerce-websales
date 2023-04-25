//package com.laptrinhoop.dto;
//
//
//import lombok.AllArgsConstructor;
//import lombok.Builder;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//
//import javax.validation.constraints.NotNull;
//import java.math.BigDecimal;
//import java.time.LocalDateTime;
//import java.util.List;
//
//@Data
//@Builder
//@AllArgsConstructor
//@NoArgsConstructor
//public class PaymentAttachFileRequest {
//    private String locale;
//    private String description;
//    @NotNull(message = "amount cannot null")
//    private BigDecimal amount;
//    private String currencyCode = "VND";
//    private String ipAddress;
//    private LocalDateTime requestTime = LocalDateTime.now();
//    private String username;
//    @NotNull(message = "policyNumber cannot null")
//    private Long policyNumber;
//    @NotNull(message = "premiumCollectedDate cannot null")
//    private String premiumCollectedDate;
//    private Integer premiumType;
//    private PaymentType paymentType = PaymentType.ATTACH_FILE;
//
//    @NotNull(message = "paymentDocumentType cannot null")
//    private PaymentDocumentType paymentDocumentType = PaymentDocumentType.POLICY_PAYMENT;
//    @NotNull(message = "attachFileIds cannot null")
//    List<String> attachFileIds;
//}