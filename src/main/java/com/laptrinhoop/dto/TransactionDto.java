//package com.laptrinhoop.dto;
//
//
//import com.vietanlife.renewal.model.Transaction;
//import com.vietanlife.renewal.model.TransactionStatus;
//import lombok.*;
//import lombok.experimental.FieldDefaults;
//import org.apache.commons.lang3.ObjectUtils;
//import org.springframework.data.domain.Sort;
//
//import java.time.LocalDateTime;
//import java.util.Set;
//import java.util.UUID;
//
//@NoArgsConstructor(access = AccessLevel.PRIVATE)
//public class TransactionDto {
//
//    @Data
//    @FieldDefaults(level = AccessLevel.PRIVATE)
//    public static class TransactionSearchRequest extends com.vietanlife.renewal.dto.PageRequest {
//        Set<UUID> partnerUuid;
//        String clientInvoiceId;
//        String transactionId;
//        String partnerTransactionId;
//        Set<TransactionStatus> status;
//        Set<String> partnerStatus;
//        SortBy sortBy;
//
//        @Override
//        protected Sort getSort() {
//            Sort.Direction direction = ObjectUtils.defaultIfNull(getDirection(), Sort.Direction.DESC);
//            String fieldName = ObjectUtils.defaultIfNull(sortBy.getFieldName(), SortBy.ID.fieldName);
//            return Sort.by(direction, fieldName);
//        }
//
//        @AllArgsConstructor
//        public enum SortBy {
//            ID("id"),
//            CREATED_AT("createdAt"),
//            AMOUNT("amount"),
//            TRANSACTION_DATE("partnerTransactionDate");
//
//            @Getter
//            private String fieldName;
//        }
//    }
//
//    @Data
//    @FieldDefaults(level = AccessLevel.PRIVATE)
//    public static class TransactionResponse {
//        UUID uuid;
//
//        String partnerCode;
//        String partnerName;
//        String currencyCode;
//        String amount;
//        String description;
//
//        String clientInvoiceId;
//        String transactionId;
//        String partnerTransactionId;
//        String bankTransactionId;
//
//        TransactionStatus status;
//        String partnerStatus;
//
//        LocalDateTime partnerTransactionDate;
//
//        private TransactionResponse(Transaction transaction) {
//            this.uuid = transaction.getUuid();
//            this.partnerCode = transaction.getPartner().getCode();
//            this.partnerName = transaction.getPartner().getName();
//            this.currencyCode = transaction.getCurrencyCode();
//            this.amount = transaction.getAmount().toString();
//            this.description = transaction.getDescription();
//            this.clientInvoiceId = transaction.getClientInvoiceId();
//            this.transactionId = transaction.getTransactionId();
//            this.partnerTransactionId = transaction.getPartnerTransactionId();
//            this.bankTransactionId = transaction.getBankTransactionId();
//            this.status = transaction.getStatus();
//            this.partnerStatus = transaction.getPartnerStatus();
//            this.partnerTransactionDate = transaction.getPartnerTransactionDate();
//        }
//
//        public static TransactionResponse from(Transaction transaction) {
//            return new TransactionResponse(transaction);
//        }
//    }
//}
