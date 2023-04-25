package com.laptrinhoop.dto.vnpay;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.laptrinhoop.constants.Constant;
import com.laptrinhoop.constants.VNPayCommand;
import com.laptrinhoop.constants.VNPayConstants;
import com.laptrinhoop.constants.VNPayVersion;
import com.laptrinhoop.dto.PaymentRequest;
import com.laptrinhoop.entity.Partner;
import com.laptrinhoop.utils.DateTimeUtil;
import lombok.experimental.SuperBuilder;

import javax.validation.constraints.NotNull;

@SuperBuilder(builderMethodName = "getTokenRequestBuilder")
public class VNPayGetTokenRequest extends VNPayBaseRequest {

    @JsonProperty("vnp_Amount")
    @NotNull
    String amount;
    @JsonProperty("vnp_CurrCode")
    @NotNull
    String currCode;
    @JsonProperty("vnp_Locale")
    String locale;
    @JsonProperty("vnp_ReturnUrl")
    @NotNull
    String returnUrl;

    public static VNPayGetTokenRequest from(Partner partner, PaymentRequest paymentRequest) {
        return VNPayGetTokenRequest
                .getTokenRequestBuilder()
                .version(VNPayVersion.VERSION_2_1_0.getVersion())
                .command(VNPayCommand.PAY.getVnpCommand())
                .tmdCode(partner.getMerchantId())
                .orderInfo(paymentRequest.getDescription())
                .ipAddress(paymentRequest.getIpAddress())
                .createDate(DateTimeUtil.nowToString(VNPayConstants.FORMAT_DATE))
                .txnRef(paymentRequest.getInvoiceId())
                .amount(String.valueOf(paymentRequest.getAmount().longValue() * 100))
                .currCode(paymentRequest.getCurrencyCode().toUpperCase())
                .locale(paymentRequest.getLocale() != null ? paymentRequest.getLocale() : "vi")
                .returnUrl(paymentRequest.getRedirectUrl())
                .build();
    }

}
