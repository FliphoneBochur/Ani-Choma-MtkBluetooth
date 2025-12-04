.class public final Lorg/android/btsap/SapApi;
.super Ljava/lang/Object;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_RSP;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_SET_TRANSFER_PROTOCOL_REQ;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_ERROR_RSP;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_RSP;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS_REQ;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_STATUS_IND;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_RSP;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_RESET_SIM_REQ;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_RSP;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_POWER_REQ;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_REQ;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_RSP;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_APDU_REQ;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_IND;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_RSP;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_DISCONNECT_REQ;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_RSP;,
        Lorg/android/btsap/SapApi$RIL_SIM_SAP_CONNECT_REQ;,
        Lorg/android/btsap/SapApi$MsgHeader;
    }
.end annotation


# static fields
.field public static final REQUEST:I = 0x1

.field public static final RESPONSE:I = 0x2

.field public static final RIL_E_CANCELLED:I = 0x4

.field public static final RIL_E_GENERIC_FAILURE:I = 0x2

.field public static final RIL_E_INVALID_PARAMETER:I = 0x5

.field public static final RIL_E_RADIO_NOT_AVAILABLE:I = 0x1

.field public static final RIL_E_REQUEST_NOT_SUPPORTED:I = 0x3

.field public static final RIL_E_SUCCESS:I = 0x0

.field public static final RIL_E_UNUSED:I = 0x6

.field public static final RIL_SIM_SAP_APDU:I = 0x3

.field public static final RIL_SIM_SAP_CONNECT:I = 0x1

.field public static final RIL_SIM_SAP_DISCONNECT:I = 0x2

.field public static final RIL_SIM_SAP_ERROR_RESP:I = 0x9

.field public static final RIL_SIM_SAP_POWER:I = 0x5

.field public static final RIL_SIM_SAP_RESET_SIM:I = 0x6

.field public static final RIL_SIM_SAP_SET_TRANSFER_PROTOCOL:I = 0xa

.field public static final RIL_SIM_SAP_STATUS:I = 0x7

.field public static final RIL_SIM_SAP_TRANSFER_ATR:I = 0x4

.field public static final RIL_SIM_SAP_TRANSFER_CARD_READER_STATUS:I = 0x8

.field public static final UNKNOWN:I = 0x0

.field public static final UNKNOWN_REQ:I = 0x0

.field public static final UNSOL_RESPONSE:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
