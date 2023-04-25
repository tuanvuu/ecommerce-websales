//package com.laptrinhoop.dto;
//
//import com.mox.core.contract.openapi.insuremocp.v1.client.model.CusInquiryPremiumDueRequest;
//import com.mox.core.contract.openapi.insuremoscp.v3.client.model.InquiryPolicyListResponse;
//import com.vietanlife.renewal.service.IInquiryPremiumDueService;
//import lombok.AllArgsConstructor;
//import lombok.Builder;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//
//
//@Builder
//@Data
//@NoArgsConstructor
//@AllArgsConstructor
//public class TransferInquiryPaymentDto {
//    private IInquiryPremiumDueService inquiryPremiumDueService;
//    private CusInquiryPremiumDueRequest.PremiumTypeEnum premiumTypeEnum;
//    private InquiryPolicyListResponse inquiryPolicyListResponse;
//
//    public TransferInquiryPaymentDto(InquiryPolicyListResponse inquiryPolicyListResponse) {
//        this.inquiryPolicyListResponse = inquiryPolicyListResponse;
//    }
//
//    public java.util.List<com.vietanlife.renewal.dto.ResInquiryPayments> getListInquiryPremiumDue(){
//        return inquiryPremiumDueService.getResInquiryPayments(inquiryPolicyListResponse,premiumTypeEnum);
//    }
//}
