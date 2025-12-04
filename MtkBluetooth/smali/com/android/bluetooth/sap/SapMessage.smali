.class public Lcom/android/bluetooth/sap/SapMessage;
.super Ljava/lang/Object;
.source "SapMessage.java"


# static fields
.field public static final CON_STATUS_ERROR_CONNECTION:I = 0x1

.field public static final CON_STATUS_ERROR_MAX_MSG_SIZE_TOO_SMALL:I = 0x3

.field public static final CON_STATUS_ERROR_MAX_MSG_SIZE_UNSUPPORTED:I = 0x2

.field public static final CON_STATUS_OK:I = 0x0

.field public static final CON_STATUS_OK_ONGOING_CALL:I = 0x4

.field public static final DEBUG:Z = false

.field public static final DISC_FORCED:I = 0x100

.field public static final DISC_GRACEFULL:I = 0x0

.field public static final DISC_IMMEDIATE:I = 0x1

.field public static final DISC_RFCOMM:I = 0x101

.field public static final ID_CONNECT_REQ:I = 0x0

.field public static final ID_CONNECT_RESP:I = 0x1

.field public static final ID_DISCONNECT_IND:I = 0x4

.field public static final ID_DISCONNECT_REQ:I = 0x2

.field public static final ID_DISCONNECT_RESP:I = 0x3

.field public static final ID_ERROR_RESP:I = 0x12

.field public static final ID_POWER_SIM_OFF_REQ:I = 0x9

.field public static final ID_POWER_SIM_OFF_RESP:I = 0xa

.field public static final ID_POWER_SIM_ON_REQ:I = 0xb

.field public static final ID_POWER_SIM_ON_RESP:I = 0xc

.field public static final ID_RESET_SIM_REQ:I = 0xd

.field public static final ID_RESET_SIM_RESP:I = 0xe

.field public static final ID_RIL_BASE:I = 0x100

.field public static final ID_RIL_GET_SIM_STATUS_REQ:I = 0x200

.field public static final ID_RIL_SIM_ACCESS_TEST_REQ:I = 0x201

.field public static final ID_RIL_SIM_ACCESS_TEST_RESP:I = 0x202

.field public static final ID_RIL_UNKNOWN:I = 0x1ff

.field public static final ID_RIL_UNSOL_CONNECTED:I = 0x100

.field public static final ID_RIL_UNSOL_DISCONNECT_IND:I = 0x102

.field public static final ID_SET_TRANSPORT_PROTOCOL_REQ:I = 0x13

.field public static final ID_SET_TRANSPORT_PROTOCOL_RESP:I = 0x14

.field public static final ID_STATUS_IND:I = 0x11

.field public static final ID_TRANSFER_APDU_REQ:I = 0x5

.field public static final ID_TRANSFER_APDU_RESP:I = 0x6

.field public static final ID_TRANSFER_ATR_REQ:I = 0x7

.field public static final ID_TRANSFER_ATR_RESP:I = 0x8

.field public static final ID_TRANSFER_CARD_READER_STATUS_REQ:I = 0xf

.field public static final ID_TRANSFER_CARD_READER_STATUS_RESP:I = 0x10

.field public static final INVALID_VALUE:I = -0x1

.field public static final PARAM_ATR_ID:I = 0x6

.field public static final PARAM_CARD_READER_STATUS_ID:I = 0x7

.field public static final PARAM_CARD_READER_STATUS_LENGTH:I = 0x1

.field public static final PARAM_COMMAND_APDU7816_ID:I = 0x10

.field public static final PARAM_COMMAND_APDU_ID:I = 0x4

.field public static final PARAM_CONNECTION_STATUS_ID:I = 0x1

.field public static final PARAM_CONNECTION_STATUS_LENGTH:I = 0x1

.field public static final PARAM_DISCONNECT_TYPE_ID:I = 0x3

.field public static final PARAM_DISCONNECT_TYPE_LENGTH:I = 0x1

.field public static final PARAM_MAX_MSG_SIZE_ID:I = 0x0

.field public static final PARAM_MAX_MSG_SIZE_LENGTH:I = 0x2

.field public static final PARAM_RESPONSE_APDU_ID:I = 0x5

.field public static final PARAM_RESULT_CODE_ID:I = 0x2

.field public static final PARAM_RESULT_CODE_LENGTH:I = 0x1

.field public static final PARAM_STATUS_CHANGE_ID:I = 0x8

.field public static final PARAM_STATUS_CHANGE_LENGTH:I = 0x1

.field public static final PARAM_TRANSPORT_PROTOCOL_ID:I = 0x9

.field public static final PARAM_TRANSPORT_PROTOCOL_LENGTH:I = 0x1

.field static final RESPONSE_SOLICITED:I = 0x0

.field static final RESPONSE_UNSOLICITED:I = 0x1

.field public static final RESULT_ERROR_CARD_NOT_ACCESSIBLE:I = 0x2

.field public static final RESULT_ERROR_CARD_POWERED_OFF:I = 0x3

.field public static final RESULT_ERROR_CARD_POWERED_ON:I = 0x5

.field public static final RESULT_ERROR_CARD_REMOVED:I = 0x4

.field public static final RESULT_ERROR_DATA_NOT_AVAILABLE:I = 0x6

.field public static final RESULT_ERROR_NOT_SUPPORTED:I = 0x7

.field public static final RESULT_ERROR_NO_REASON:I = 0x1

.field public static final RESULT_OK:I = 0x0

.field public static final STATUS_CARD_INSERTED:I = 0x4

.field public static final STATUS_CARD_NOT_ACCESSIBLE:I = 0x2

.field public static final STATUS_CARD_REMOVED:I = 0x3

.field public static final STATUS_CARD_RESET:I = 0x1

.field public static final STATUS_RECOVERED:I = 0x5

.field public static final STATUS_UNKNOWN_ERROR:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SapMessage"

.field public static final TEST:Z = false

.field public static final TEST_MODE_DISABLE:I = 0x0

.field public static final TEST_MODE_ENABLE:I = 0x1

.field public static final TRANS_PROTO_T0:I = 0x0

.field public static final TRANS_PROTO_T1:I = 0x1

.field public static final VERBOSE:Z = false

.field static sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

.field static sOngoingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApdu:[B

.field private mApdu7816:[B

.field private mApduResp:[B

.field private mAtr:[B

.field private mCardReaderStatus:I

.field private mClearRilQueue:Z

.field private mConnectionStatus:I

.field private mDisconnectionType:I

.field private mMaxMsgSize:I

.field private mMsgType:I

.field private mResultCode:I

.field private mSendToRil:Z

.field private mStatusChange:I

.field private mTestMode:I

.field private mTransportProtocol:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/bluetooth/sap/SapMessage;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 172
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mSendToRil:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mClearRilQueue:Z

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 180
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    .line 181
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    .line 182
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 183
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    .line 184
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    .line 185
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    .line 186
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    .line 187
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTestMode:I

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    .line 189
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    .line 190
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    .line 191
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    .line 198
    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 199
    return-void
.end method

.method private constructor <init>(Lorg/android/btsap/SapApi$MsgHeader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mSendToRil:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mClearRilQueue:Z

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 180
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    .line 181
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    .line 182
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 183
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    .line 184
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    .line 185
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    .line 186
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    .line 187
    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTestMode:I

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    .line 189
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    .line 190
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    .line 191
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    .line 840
    :try_start_0
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 842
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapMessage;->createUnsolicited(Lorg/android/btsap/SapApi$MsgHeader;)V

    .line 843
    goto :goto_0

    .line 848
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong msg header received: Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapMessage;->createSolicited(Lorg/android/btsap/SapApi$MsgHeader;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    nop

    .line 853
    :goto_0
    nop

    .line 854
    return-void

    .line 850
    :catch_0
    move-exception p1

    .line 851
    const-string v0, "SapMessage"

    const-string v1, "Error occured parsing a RIL message"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 852
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createSolicited(Lorg/android/btsap/SapApi$MsgHeader;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 918
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/android/btsap/SapApi$MsgHeader;->hasToken()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 921
    invoke-virtual/range {p1 .. p1}, Lorg/android/btsap/SapApi$MsgHeader;->hasError()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 924
    invoke-virtual/range {p1 .. p1}, Lorg/android/btsap/SapApi$MsgHeader;->getToken()I

    move-result v1

    .line 925
    invoke-virtual/range {p1 .. p1}, Lorg/android/btsap/SapApi$MsgHeader;->getError()I

    move-result v2

    .line 926
    nop

    .line 927
    sget-object v3, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 933
    const-string v3, "SapMessage"

    if-nez v1, :cond_0

    .line 937
    const-string v0, "Solicited response received on a command not initiated - ignoring."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-void

    .line 940
    :cond_0
    invoke-static {v2}, Lcom/android/bluetooth/sap/SapMessage;->mapRilErrorCode(I)I

    move-result v2

    iput v2, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 942
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v2, :cond_2d

    if-eq v2, v8, :cond_2c

    const/4 v4, 0x5

    const/4 v10, 0x6

    if-eq v2, v4, :cond_26

    const/16 v11, 0x12

    const/4 v12, 0x7

    if-eq v2, v12, :cond_1e

    const/16 v13, 0x9

    const/16 v14, 0x11

    const/16 v15, 0xb

    if-eq v2, v13, :cond_18

    if-eq v2, v15, :cond_12

    const/16 v4, 0xd

    if-eq v2, v4, :cond_d

    const/16 v4, 0xf

    const/16 v11, 0x10

    if-eq v2, v4, :cond_8

    const/16 v4, 0x13

    if-eq v2, v4, :cond_2

    const/16 v4, 0x201

    if-eq v2, v4, :cond_1

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown request type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1174
    :cond_1
    const/16 v1, 0x202

    iput v1, v0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 1175
    goto/16 :goto_1

    .line 1013
    :cond_2
    nop

    .line 1015
    invoke-virtual/range {p1 .. p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    .line 1014
    invoke-static {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;

    move-result-object v1

    .line 1016
    const/16 v2, 0x14

    iput v2, v0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 1017
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;->getResponse()I

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, v8, :cond_6

    if-eq v1, v15, :cond_5

    if-eq v1, v11, :cond_4

    if-eq v1, v14, :cond_3

    .line 1034
    iput v12, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1035
    goto/16 :goto_1

    .line 1028
    :cond_3
    iput v7, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1029
    goto/16 :goto_1

    .line 1031
    :cond_4
    iput v5, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1032
    goto/16 :goto_1

    .line 1025
    :cond_5
    iput v8, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1026
    goto/16 :goto_1

    .line 1022
    :cond_6
    iput v12, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1023
    goto/16 :goto_1

    .line 1019
    :cond_7
    iput v6, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1020
    goto/16 :goto_1

    .line 1147
    :cond_8
    nop

    .line 1149
    invoke-virtual/range {p1 .. p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    .line 1148
    invoke-static {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_RSP;

    move-result-object v1

    .line 1150
    iput v11, v0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 1151
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_RSP;->getResponse()I

    move-result v2

    if-eqz v2, :cond_b

    if-eq v2, v8, :cond_a

    if-eq v2, v10, :cond_9

    .line 1167
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1168
    goto/16 :goto_1

    .line 1164
    :cond_9
    iput v10, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1165
    goto/16 :goto_1

    .line 1161
    :cond_a
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1162
    goto/16 :goto_1

    .line 1153
    :cond_b
    iput v6, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1154
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_RSP;->hasCardReaderStatus()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1155
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_RSP;->getCardReaderStatus()I

    move-result v1

    iput v1, v0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    goto/16 :goto_1

    .line 1157
    :cond_c
    iput v10, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1159
    goto/16 :goto_1

    .line 1124
    :cond_d
    nop

    .line 1125
    invoke-virtual/range {p1 .. p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;

    move-result-object v1

    .line 1126
    const/16 v2, 0xe

    iput v2, v0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 1127
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;->getResponse()I

    move-result v1

    if-eqz v1, :cond_11

    if-eq v1, v8, :cond_10

    if-eq v1, v15, :cond_f

    if-eq v1, v14, :cond_e

    .line 1141
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1142
    goto/16 :goto_1

    .line 1138
    :cond_e
    iput v7, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1139
    goto/16 :goto_1

    .line 1135
    :cond_f
    iput v8, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1136
    goto/16 :goto_1

    .line 1132
    :cond_10
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1133
    goto/16 :goto_1

    .line 1129
    :cond_11
    iput v6, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1130
    goto/16 :goto_1

    .line 1098
    :cond_12
    nop

    .line 1099
    invoke-virtual/range {p1 .. p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;

    move-result-object v1

    .line 1100
    const/16 v2, 0xc

    iput v2, v0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 1101
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;->getResponse()I

    move-result v1

    if-eqz v1, :cond_17

    if-eq v1, v8, :cond_16

    if-eq v1, v15, :cond_15

    if-eq v1, v14, :cond_14

    if-eq v1, v11, :cond_13

    .line 1118
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1119
    goto/16 :goto_1

    .line 1115
    :cond_13
    iput v4, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1116
    goto/16 :goto_1

    .line 1112
    :cond_14
    iput v7, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1113
    goto/16 :goto_1

    .line 1109
    :cond_15
    iput v8, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1110
    goto/16 :goto_1

    .line 1106
    :cond_16
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1107
    goto/16 :goto_1

    .line 1103
    :cond_17
    iput v6, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1104
    goto/16 :goto_1

    .line 1072
    :cond_18
    nop

    .line 1073
    invoke-virtual/range {p1 .. p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;

    move-result-object v1

    .line 1074
    const/16 v2, 0xa

    iput v2, v0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 1075
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;->getResponse()I

    move-result v1

    if-eqz v1, :cond_1d

    if-eq v1, v8, :cond_1c

    if-eq v1, v15, :cond_1b

    if-eq v1, v14, :cond_1a

    if-eq v1, v11, :cond_19

    .line 1092
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1093
    goto/16 :goto_1

    .line 1089
    :cond_19
    iput v4, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1090
    goto/16 :goto_1

    .line 1086
    :cond_1a
    iput v7, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1087
    goto/16 :goto_1

    .line 1083
    :cond_1b
    iput v8, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1084
    goto/16 :goto_1

    .line 1080
    :cond_1c
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1081
    goto/16 :goto_1

    .line 1077
    :cond_1d
    iput v6, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1078
    goto/16 :goto_1

    .line 1040
    :cond_1e
    nop

    .line 1041
    invoke-virtual/range {p1 .. p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    move-result-object v1

    .line 1042
    const/16 v2, 0x8

    iput v2, v0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 1043
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasAtr()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1044
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getAtr()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    .line 1046
    :cond_1f
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getResponse()I

    move-result v1

    if-eqz v1, :cond_25

    if-eq v1, v9, :cond_24

    if-eq v1, v7, :cond_23

    if-eq v1, v5, :cond_22

    if-eq v1, v10, :cond_21

    if-eq v1, v11, :cond_20

    .line 1066
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1067
    goto/16 :goto_1

    .line 1060
    :cond_20
    iput v4, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1061
    goto/16 :goto_1

    .line 1063
    :cond_21
    iput v10, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1064
    goto/16 :goto_1

    .line 1054
    :cond_22
    iput v8, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1055
    goto/16 :goto_1

    .line 1057
    :cond_23
    iput v7, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1058
    goto/16 :goto_1

    .line 1051
    :cond_24
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1052
    goto/16 :goto_1

    .line 1048
    :cond_25
    iput v6, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1049
    goto/16 :goto_1

    .line 983
    :cond_26
    nop

    .line 984
    invoke-virtual/range {p1 .. p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;

    move-result-object v1

    .line 985
    iput v10, v0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 986
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getResponse()I

    move-result v2

    if-eqz v2, :cond_2b

    if-eq v2, v9, :cond_2a

    if-eq v2, v8, :cond_29

    if-eq v2, v7, :cond_28

    if-eq v2, v5, :cond_27

    .line 1007
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1008
    goto/16 :goto_1

    .line 998
    :cond_27
    iput v8, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 999
    goto :goto_1

    .line 1001
    :cond_28
    iput v7, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1002
    goto :goto_1

    .line 1004
    :cond_29
    iput v5, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 1005
    goto :goto_1

    .line 995
    :cond_2a
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 996
    goto :goto_1

    .line 988
    :cond_2b
    iput v6, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 990
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->hasApduResponse()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 991
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;->getApduResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    goto :goto_1

    .line 979
    :cond_2c
    iput v7, v0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 980
    iput v4, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 981
    goto :goto_1

    .line 944
    :cond_2d
    nop

    .line 945
    invoke-virtual/range {p1 .. p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;

    move-result-object v1

    .line 946
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 947
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->hasMaxMessageSize()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 948
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getMaxMessageSize()I

    move-result v2

    iput v2, v0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    .line 951
    :cond_2e
    invoke-virtual {v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;->getResponse()I

    move-result v1

    if-eqz v1, :cond_33

    if-eq v1, v9, :cond_32

    if-eq v1, v8, :cond_31

    if-eq v1, v7, :cond_30

    if-eq v1, v5, :cond_2f

    .line 968
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    goto :goto_0

    .line 956
    :cond_2f
    iput v5, v0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    .line 957
    goto :goto_0

    .line 965
    :cond_30
    iput v7, v0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    .line 966
    goto :goto_0

    .line 962
    :cond_31
    iput v8, v0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    .line 963
    goto :goto_0

    .line 959
    :cond_32
    iput v9, v0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    .line 960
    goto :goto_0

    .line 953
    :cond_33
    iput v6, v0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    .line 954
    nop

    .line 971
    :goto_0
    iput v4, v0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 976
    nop

    .line 1180
    :cond_34
    :goto_1
    return-void

    .line 922
    :cond_35
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error code is missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_36
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Token is missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createUnsolicited(Lorg/android/btsap/SapApi$MsgHeader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .line 858
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getId()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x1ff

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 911
    iput v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    goto :goto_0

    .line 868
    :cond_0
    nop

    .line 869
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;

    move-result-object p1

    .line 870
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 871
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->hasStatusChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 872
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;->getStatusChange()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/sap/SapMessage;->setStatusChange(I)V

    goto :goto_0

    .line 881
    :cond_1
    iput v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 883
    goto :goto_0

    .line 890
    :cond_2
    nop

    .line 891
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$MsgHeader;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;

    move-result-object p1

    .line 892
    const/16 v0, 0x102

    iput v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 893
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->hasDisconnectType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 894
    invoke-virtual {p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;->getDisconnectType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/sap/SapMessage;->setDisconnectionType(I)V

    goto :goto_0

    .line 903
    :cond_3
    iput v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 905
    nop

    .line 913
    :goto_0
    return-void
.end method

.method public static getMsgTypeName(I)Ljava/lang/String;
    .locals 0

    .line 1265
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNumPendingRilMessages()I
    .locals 1

    .line 210
    sget-object v0, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method private getParamCount()I
    .locals 3

    .line 334
    nop

    .line 335
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 336
    const/4 v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    const/4 v0, 0x0

    .line 338
    :goto_0
    iget v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    if-eq v2, v1, :cond_1

    .line 339
    add-int/lit8 v0, v0, 0x1

    .line 341
    :cond_1
    iget v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    if-eq v2, v1, :cond_2

    .line 342
    add-int/lit8 v0, v0, 0x1

    .line 344
    :cond_2
    iget v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    if-eq v2, v1, :cond_3

    .line 345
    add-int/lit8 v0, v0, 0x1

    .line 347
    :cond_3
    iget v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    if-eq v2, v1, :cond_4

    .line 348
    add-int/lit8 v0, v0, 0x1

    .line 350
    :cond_4
    iget v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    if-eq v2, v1, :cond_5

    .line 351
    add-int/lit8 v0, v0, 0x1

    .line 353
    :cond_5
    iget v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    if-eq v2, v1, :cond_6

    .line 354
    add-int/lit8 v0, v0, 0x1

    .line 356
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    if-eqz v1, :cond_7

    .line 357
    add-int/lit8 v0, v0, 0x1

    .line 359
    :cond_7
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    if-eqz v1, :cond_8

    .line 360
    add-int/lit8 v0, v0, 0x1

    .line 362
    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    if-eqz v1, :cond_9

    .line 363
    add-int/lit8 v0, v0, 0x1

    .line 365
    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    if-eqz v1, :cond_a

    .line 366
    add-int/lit8 v0, v0, 0x1

    .line 368
    :cond_a
    return v0
.end method

.method private static mapRilErrorCode(I)I
    .locals 2

    .line 1185
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 1199
    return v0

    .line 1197
    :cond_0
    const/4 p0, 0x7

    return p0

    .line 1193
    :cond_1
    const/4 p0, 0x2

    return p0

    .line 1187
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static newInstance(Lorg/android/btsap/SapApi$MsgHeader;)Lcom/android/bluetooth/sap/SapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 834
    new-instance v0, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/sap/SapMessage;-><init>(Lorg/android/btsap/SapApi$MsgHeader;)V

    return-object v0
.end method

.method private parseParameters(ILjava/io/InputStream;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 484
    nop

    .line 485
    nop

    .line 487
    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    if-ge v2, p1, :cond_9

    .line 488
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 489
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    .line 490
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 491
    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v7

    or-int/2addr v6, v7

    .line 494
    rem-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_0

    .line 495
    rsub-int/lit8 v4, v7, 0x4

    .line 501
    :cond_0
    const/16 v7, 0x10

    if-eq v5, v7, :cond_8

    const/4 v7, 0x3

    const-string v8, " skipping this parameter."

    const-string v9, "SapMessage"

    packed-switch v5, :pswitch_data_0

    .line 609
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received unknown parameter ID: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " length: "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    add-int/2addr v6, v4

    invoke-static {p2, v6}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    goto/16 :goto_1

    .line 525
    :pswitch_0
    if-eq v6, v0, :cond_1

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PARAM_TRANSPORT_PROTOCOL with wrong length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    add-int/2addr v6, v4

    invoke-static {p2, v6}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 529
    move v3, v1

    goto/16 :goto_1

    .line 531
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    .line 532
    invoke-static {p2, v7}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 534
    goto/16 :goto_1

    .line 562
    :pswitch_1
    if-eq v6, v0, :cond_2

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PARAM_STATUS_CHANGE with wrong length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    add-int/2addr v6, v4

    invoke-static {p2, v6}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 566
    move v3, v1

    goto/16 :goto_1

    .line 568
    :cond_2
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    .line 569
    invoke-static {p2, v7}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 571
    goto/16 :goto_1

    .line 550
    :pswitch_2
    if-eq v6, v0, :cond_3

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PARAM_CARD_READER_STATUS with wrong length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    add-int/2addr v6, v4

    invoke-static {p2, v6}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 554
    move v3, v1

    goto/16 :goto_1

    .line 556
    :cond_3
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    .line 557
    invoke-static {p2, v7}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 559
    goto/16 :goto_1

    .line 604
    :pswitch_3
    new-array v5, v6, [B

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    .line 605
    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->read(Ljava/io/InputStream;[B)V

    .line 606
    invoke-static {p2, v4}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 607
    goto/16 :goto_1

    .line 598
    :pswitch_4
    new-array v5, v6, [B

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    .line 599
    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->read(Ljava/io/InputStream;[B)V

    .line 600
    invoke-static {p2, v4}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 601
    goto/16 :goto_1

    .line 515
    :pswitch_5
    new-array v5, v6, [B

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    .line 516
    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->read(Ljava/io/InputStream;[B)V

    .line 517
    invoke-static {p2, v4}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 518
    goto/16 :goto_1

    .line 586
    :pswitch_6
    if-eq v6, v0, :cond_4

    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PARAM_DISCONNECT_TYPE_ID with wrong length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    add-int/2addr v6, v4

    invoke-static {p2, v6}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 590
    move v3, v1

    goto/16 :goto_1

    .line 592
    :cond_4
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    .line 593
    invoke-static {p2, v7}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 595
    goto/16 :goto_1

    .line 574
    :pswitch_7
    if-eq v6, v0, :cond_5

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PARAM_RESULT_CODE with wrong length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    add-int/2addr v6, v4

    invoke-static {p2, v6}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 578
    move v3, v1

    goto/16 :goto_1

    .line 580
    :cond_5
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 581
    invoke-static {p2, v7}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 583
    goto :goto_1

    .line 537
    :pswitch_8
    if-eq v6, v0, :cond_6

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PARAM_CONNECTION_STATUS with wrong length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    add-int/2addr v6, v4

    invoke-static {p2, v6}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 542
    move v3, v1

    goto :goto_1

    .line 544
    :cond_6
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v5

    iput v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    .line 545
    invoke-static {p2, v7}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 547
    goto :goto_1

    .line 503
    :pswitch_9
    const/4 v5, 0x2

    if-eq v6, v5, :cond_7

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received PARAM_MAX_MSG_SIZE with wrong length: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    add-int/2addr v6, v4

    invoke-static {p2, v6}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 507
    move v3, v1

    goto :goto_1

    .line 509
    :cond_7
    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v6

    iput v6, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    .line 510
    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    .line 511
    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 513
    goto :goto_1

    .line 520
    :cond_8
    new-array v5, v6, [B

    iput-object v5, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    .line 521
    invoke-static {p2, v5}, Lcom/android/bluetooth/sap/SapMessage;->read(Ljava/io/InputStream;[B)V

    .line 522
    invoke-static {p2, v4}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 523
    nop

    .line 487
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 615
    :cond_9
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private primitiveArrayToContainerArrayList([B)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 744
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 745
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    :cond_0
    return-object v0
.end method

.method private static read(Ljava/io/InputStream;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    array-length v0, p1

    .line 448
    const/4 v1, 0x0

    .line 450
    :goto_0
    if-ge v1, v0, :cond_1

    .line 451
    sub-int v2, v0, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 452
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 455
    add-int/2addr v1, v2

    goto :goto_0

    .line 453
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "EOS reached while reading a byte array."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 458
    :cond_1
    return-void
.end method

.method public static readMessage(ILjava/io/InputStream;)Lcom/android/bluetooth/sap/SapMessage;
    .locals 5

    .line 379
    const-string v0, "SapMessage"

    new-instance v1, Lcom/android/bluetooth/sap/SapMessage;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/sap/SapMessage;-><init>(I)V

    .line 384
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 385
    const/4 v4, 0x2

    invoke-static {p1, v4}, Lcom/android/bluetooth/sap/SapMessage;->skip(Ljava/io/InputStream;I)V

    .line 386
    if-lez v3, :cond_0

    .line 390
    invoke-direct {v1, v3, p1}, Lcom/android/bluetooth/sap/SapMessage;->parseParameters(ILjava/io/InputStream;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    .line 391
    return-object v2

    .line 397
    :cond_0
    nop

    .line 403
    const/4 p1, -0x1

    if-eqz p0, :cond_7

    if-eq p0, v4, :cond_6

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq p0, v3, :cond_4

    const/4 v3, 0x7

    if-eq p0, v3, :cond_3

    const/16 v3, 0x9

    if-eq p0, v3, :cond_3

    const/16 v3, 0xb

    if-eq p0, v3, :cond_3

    const/16 v3, 0xd

    if-eq p0, v3, :cond_3

    const/16 v3, 0xf

    if-eq p0, v3, :cond_3

    const/16 v3, 0x13

    if-eq p0, v3, :cond_1

    .line 434
    const-string p0, "Unknown request type"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-object v2

    .line 418
    :cond_1
    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapMessage;->getTransportProtocol()I

    move-result p0

    if-ne p0, p1, :cond_2

    .line 419
    const-string p0, "Missing TransportProtocol parameter in SET_TRANSPORT_PROTOCOL_REQ"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v2

    .line 422
    :cond_2
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/sap/SapMessage;->setSendToRil(Z)V

    .line 423
    goto :goto_0

    .line 429
    :cond_3
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/sap/SapMessage;->setSendToRil(Z)V

    .line 430
    goto :goto_0

    .line 411
    :cond_4
    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapMessage;->getApdu()[B

    move-result-object p0

    if-nez p0, :cond_5

    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapMessage;->getApdu7816()[B

    move-result-object p0

    if-nez p0, :cond_5

    .line 412
    const-string p0, "Missing Apdu parameter in TRANSFER_APDU_REQ"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-object v2

    .line 415
    :cond_5
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/sap/SapMessage;->setSendToRil(Z)V

    .line 416
    goto :goto_0

    .line 432
    :cond_6
    goto :goto_0

    .line 405
    :cond_7
    invoke-virtual {v1}, Lcom/android/bluetooth/sap/SapMessage;->getMaxMsgSize()I

    move-result p0

    if-ne p0, p1, :cond_8

    .line 406
    const-string p0, "Missing MaxMsgSize parameter in CONNECT_REQ"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-object v2

    .line 437
    :cond_8
    :goto_0
    return-object v1

    .line 394
    :catch_0
    move-exception p0

    .line 395
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    return-object v2
.end method

.method private static resetPendingRilMessages()V
    .locals 3

    .line 202
    sget-object v0, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 203
    if-eqz v0, :cond_0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing message queue with size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SapMessage"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v0, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 207
    :cond_0
    return-void
.end method

.method private static skip(Ljava/io/InputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 467
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 468
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_0
    return-void
.end method

.method private writeLength(ILcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 735
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 736
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    aput-byte v2, v0, v2

    .line 737
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 738
    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    .line 739
    invoke-virtual {p2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeRawBytes([B)V

    .line 740
    return-void
.end method

.method private static writeParameter(Ljava/io/OutputStream;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 630
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 631
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 632
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 633
    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write(I)V

    .line 635
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 643
    shr-int/lit8 p3, p2, 0x8

    and-int/lit16 p3, p3, 0xff

    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write(I)V

    .line 644
    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 645
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 646
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 647
    goto :goto_0

    .line 649
    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to write value of length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 637
    :cond_1
    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write(I)V

    .line 638
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 639
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 640
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 641
    nop

    .line 651
    :goto_0
    return-void
.end method

.method private static writeParameter(Ljava/io/OutputStream;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 663
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 664
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 665
    array-length v0, p2

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 666
    array-length v0, p2

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 669
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 670
    array-length v0, p2

    rem-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 671
    move v0, p1

    :goto_0
    array-length v1, p2

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    .line 672
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    :cond_0
    return-void
.end method


# virtual methods
.method public getApdu()[B
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    return-object v0
.end method

.method public getApdu7816()[B
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    return-object v0
.end method

.method public getApduResp()[B
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    return-object v0
.end method

.method public getAtr()[B
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    return-object v0
.end method

.method public getCardReaderStatus()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    return v0
.end method

.method public getClearRilQueue()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mClearRilQueue:Z

    return v0
.end method

.method public getConnectionStatus()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    return v0
.end method

.method public getDisconnectionType()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    return v0
.end method

.method public getMaxMsgSize()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    return v0
.end method

.method public getSendToRil()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mSendToRil:Z

    return v0
.end method

.method public getStatusChange()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    return v0
.end method

.method public getTestMode()I
    .locals 1

    .line 326
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTestMode:I

    return v0
.end method

.method public getTransportProtocol()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    return v0
.end method

.method public send(Landroid/hardware/radio/V1_0/ISap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 754
    sget-object v0, Lcom/android/bluetooth/sap/SapMessage;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callISapReq: called for mMsgType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rilSerial "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SapMessage"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-boolean v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mClearRilQueue:Z

    if-eqz v1, :cond_0

    .line 760
    invoke-static {}, Lcom/android/bluetooth/sap/SapMessage;->resetPendingRilMessages()V

    .line 763
    :cond_0
    sget-object v1, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    if-eqz v1, :cond_d

    const/4 v3, 0x2

    if-eq v1, v3, :cond_c

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_9

    const/4 v3, 0x7

    if-eq v1, v3, :cond_8

    const/16 v3, 0x9

    if-eq v1, v3, :cond_7

    const/16 v3, 0xb

    if-eq v1, v3, :cond_6

    const/16 v3, 0xd

    if-eq v1, v3, :cond_5

    const/16 v3, 0xf

    if-eq v1, v3, :cond_4

    const/16 v3, 0x13

    if-ne v1, v3, :cond_3

    .line 792
    iget v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    if-nez v1, :cond_1

    .line 793
    goto :goto_0

    .line 794
    :cond_1
    if-ne v1, v5, :cond_2

    .line 795
    move v4, v5

    .line 801
    :goto_0
    invoke-interface {p1, v0, v4}, Landroid/hardware/radio/V1_0/ISap;->setTransferProtocolReq(II)V

    .line 802
    goto :goto_2

    .line 797
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing or invalid TransportProtocol parameter in SET_TRANSPORT_PROTOCOL_REQ: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 825
    :cond_3
    const-string p1, "Unknown request type"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 821
    :cond_4
    invoke-interface {p1, v0}, Landroid/hardware/radio/V1_0/ISap;->transferCardReaderStatusReq(I)V

    .line 822
    goto :goto_2

    .line 817
    :cond_5
    invoke-interface {p1, v0}, Landroid/hardware/radio/V1_0/ISap;->resetSimReq(I)V

    .line 818
    goto :goto_2

    .line 813
    :cond_6
    invoke-interface {p1, v0, v5}, Landroid/hardware/radio/V1_0/ISap;->powerReq(IZ)V

    .line 814
    goto :goto_2

    .line 809
    :cond_7
    invoke-interface {p1, v0, v4}, Landroid/hardware/radio/V1_0/ISap;->powerReq(IZ)V

    .line 810
    goto :goto_2

    .line 805
    :cond_8
    invoke-interface {p1, v0}, Landroid/hardware/radio/V1_0/ISap;->transferAtrReq(I)V

    .line 806
    goto :goto_2

    .line 777
    :cond_9
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    if-eqz v1, :cond_a

    .line 778
    nop

    .line 779
    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapMessage;->primitiveArrayToContainerArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1

    .line 780
    :cond_a
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    if-eqz v1, :cond_b

    .line 781
    nop

    .line 782
    invoke-direct {p0, v1}, Lcom/android/bluetooth/sap/SapMessage;->primitiveArrayToContainerArrayList([B)Ljava/util/ArrayList;

    move-result-object v1

    move v4, v5

    .line 787
    :goto_1
    invoke-interface {p1, v0, v4, v1}, Landroid/hardware/radio/V1_0/ISap;->apduReq(IILjava/util/ArrayList;)V

    .line 788
    goto :goto_2

    .line 784
    :cond_b
    const-string p1, "Missing Apdu parameter in TRANSFER_APDU_REQ"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 771
    :cond_c
    invoke-interface {p1, v0}, Landroid/hardware/radio/V1_0/ISap;->disconnectReq(I)V

    .line 772
    goto :goto_2

    .line 767
    :cond_d
    iget v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    invoke-interface {p1, v0, v1}, Landroid/hardware/radio/V1_0/ISap;->connectReq(II)V

    .line 768
    nop

    .line 831
    :goto_2
    return-void
.end method

.method public setApdu([B)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    .line 283
    return-void
.end method

.method public setApdu7816([B)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    .line 291
    return-void
.end method

.method public setApduResp([B)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    .line 299
    return-void
.end method

.method public setAtr([B)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    .line 307
    return-void
.end method

.method public setCardReaderStatus(I)V
    .locals 0

    .line 258
    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    .line 259
    return-void
.end method

.method public setClearRilQueue(Z)V
    .locals 0

    .line 322
    iput-boolean p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mClearRilQueue:Z

    .line 323
    return-void
.end method

.method public setConnectionStatus(I)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    .line 235
    return-void
.end method

.method public setDisconnectionType(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    .line 251
    return-void
.end method

.method public setMaxMsgSize(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    .line 227
    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 218
    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    .line 219
    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    .line 243
    return-void
.end method

.method public setSendToRil(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mSendToRil:Z

    .line 315
    return-void
.end method

.method public setStatusChange(I)V
    .locals 0

    .line 266
    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    .line 267
    return-void
.end method

.method public setTestMode(I)V
    .locals 0

    .line 330
    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mTestMode:I

    .line 331
    return-void
.end method

.method public setTransportProtocol(I)V
    .locals 0

    .line 274
    iput p1, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    .line 275
    return-void
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mMsgType:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 680
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapMessage;->getParamCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 681
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 682
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 685
    iget v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mConnectionStatus:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 686
    invoke-static {p1, v2, v1, v2}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    .line 689
    :cond_0
    iget v1, p0, Lcom/android/bluetooth/sap/SapMessage;->mMaxMsgSize:I

    const/4 v4, 0x2

    if-eq v1, v3, :cond_1

    .line 690
    invoke-static {p1, v0, v1, v4}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    .line 692
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mResultCode:I

    if-eq v0, v3, :cond_2

    .line 693
    invoke-static {p1, v4, v0, v2}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    .line 695
    :cond_2
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mDisconnectionType:I

    if-eq v0, v3, :cond_3

    .line 696
    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    .line 699
    :cond_3
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mCardReaderStatus:I

    if-eq v0, v3, :cond_4

    .line 700
    const/4 v1, 0x7

    invoke-static {p1, v1, v0, v2}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    .line 703
    :cond_4
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mStatusChange:I

    if-eq v0, v3, :cond_5

    .line 704
    const/16 v1, 0x8

    invoke-static {p1, v1, v0, v2}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    .line 706
    :cond_5
    iget v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mTransportProtocol:I

    if-eq v0, v3, :cond_6

    .line 707
    const/16 v1, 0x9

    invoke-static {p1, v1, v0, v2}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;III)V

    .line 710
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu:[B

    if-eqz v0, :cond_7

    .line 711
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;I[B)V

    .line 713
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApdu7816:[B

    if-eqz v0, :cond_8

    .line 714
    const/16 v1, 0x10

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;I[B)V

    .line 716
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mApduResp:[B

    if-eqz v0, :cond_9

    .line 717
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;I[B)V

    .line 719
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapMessage;->mAtr:[B

    if-eqz v0, :cond_a

    .line 720
    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/sap/SapMessage;->writeParameter(Ljava/io/OutputStream;I[B)V

    .line 722
    :cond_a
    return-void
.end method
