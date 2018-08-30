CREATE TABLE ATM_CLIENT (
    USER_ID VARCHAR(255),
    USER_NAME VARCHAR(255),
    PIN NUMBER(4),
    CREATION_DATE TIMESTAMP,
    LAST_LOGIN TIMESTAMP,
    CLIENT_TYPE VARCHAR(255),
    BRANCH_ID NUMBER(5),
    BRANCH_NAME VARCHAR(255),
    CONSTRAINT "ATM_CLIENT_PK" PRIMARY KEY(USER_ID)
);

CREATE TABLE ACCOUNT (
    USER_ID VARCHAR(255),
    ACCOUNT_ID VARCHAR(255),
    IBAN VARCHAR(255),
    CURRENCY VARCHAR(3),
    BALANCE NUMBER(10000),
    CONSTRAINT "ACCOUNT_PK" PRIMARY KEY(USER_ID, ACCOUNT_ID)
);

CREATE TABLE TRANSACTION (
    USER_ID VARCHAR(255),
    ACCOUNT_ID VARCHAR(255),
    TRANSACTION_ID VARCHAR(255),
    AMOUNT NUMBER(10000),
    TRANSACTION_TYPE VARCHAR(255),
    TRANSACTION_DATE TIMESTAMP,
    CONSTRAINT "TRANSACTION_PK" PRIMARY KEY(USER_ID, ACCOUNT_ID, TRANSACTION_ID)
);

