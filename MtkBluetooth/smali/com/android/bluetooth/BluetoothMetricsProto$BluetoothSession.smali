.class public final Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BluetoothSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;,
        Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;,
        Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSessionOrBuilder;"
    }
.end annotation


# static fields
.field public static final A2DP_SESSION_FIELD_NUMBER:I = 0x7

.field public static final CONNECTION_TECHNOLOGY_TYPE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

.field public static final DEVICE_CONNECTED_TO_FIELD_NUMBER:I = 0x5

.field public static final DISCONNECT_REASON_FIELD_NUMBER:I = 0x4

.field public static final DISCONNECT_REASON_TYPE_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final RFCOMM_SESSION_FIELD_NUMBER:I = 0x6

.field public static final SESSION_DURATION_SEC_FIELD_NUMBER:I = 0x2


# instance fields
.field private a2DpSession_:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

.field private bitField0_:I

.field private connectionTechnologyType_:I

.field private deviceConnectedTo_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

.field private disconnectReasonType_:I

.field private disconnectReason_:Ljava/lang/String;

.field private rfcommSession_:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

.field private sessionDurationSec_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5305
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;-><init>()V

    .line 5308
    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    .line 5309
    const-class v1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5311
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4039
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4040
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->disconnectReason_:Ljava/lang/String;

    .line 4041
    return-void
.end method

.method static synthetic access$7200()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1

    .line 4034
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;J)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->setSessionDurationSec(J)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 0

    .line 4034
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->clearSessionDurationSec()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->setConnectionTechnologyType(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 0

    .line 4034
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->clearConnectionTechnologyType()V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Ljava/lang/String;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->setDisconnectReason(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 0

    .line 4034
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->clearDisconnectReason()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->setDisconnectReasonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->setDeviceConnectedTo(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->setDeviceConnectedTo(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->mergeDeviceConnectedTo(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 0

    .line 4034
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->clearDeviceConnectedTo()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->setRfcommSession(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->setRfcommSession(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->mergeRfcommSession(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 0

    .line 4034
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->clearRfcommSession()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->setA2DpSession(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->setA2DpSession(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;)V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->mergeA2DpSession(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 0

    .line 4034
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->clearA2DpSession()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;)V
    .locals 0

    .line 4034
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->setDisconnectReasonType(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)V
    .locals 0

    .line 4034
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->clearDisconnectReasonType()V

    return-void
.end method

.method private clearA2DpSession()V
    .locals 1

    .line 4659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->a2DpSession_:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    .line 4660
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4661
    return-void
.end method

.method private clearConnectionTechnologyType()V
    .locals 1

    .line 4335
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4336
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->connectionTechnologyType_:I

    .line 4337
    return-void
.end method

.method private clearDeviceConnectedTo()V
    .locals 1

    .line 4495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->deviceConnectedTo_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    .line 4496
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4497
    return-void
.end method

.method private clearDisconnectReason()V
    .locals 1

    .line 4398
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4399
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->getDisconnectReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->disconnectReason_:Ljava/lang/String;

    .line 4400
    return-void
.end method

.method private clearDisconnectReasonType()V
    .locals 1

    .line 4710
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4711
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->disconnectReasonType_:I

    .line 4712
    return-void
.end method

.method private clearRfcommSession()V
    .locals 1

    .line 4577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->rfcommSession_:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    .line 4578
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4579
    return-void
.end method

.method private clearSessionDurationSec()V
    .locals 2

    .line 4284
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4285
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->sessionDurationSec_:J

    .line 4286
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1

    .line 5314
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object v0
.end method

.method private mergeA2DpSession(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 2

    .line 4640
    if-eqz p1, :cond_1

    .line 4643
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->a2DpSession_:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    if-eqz v0, :cond_0

    .line 4644
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4645
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->a2DpSession_:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    .line 4646
    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;

    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->a2DpSession_:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    goto :goto_0

    .line 4648
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->a2DpSession_:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    .line 4650
    :goto_0
    iget p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4651
    return-void

    .line 4641
    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method private mergeDeviceConnectedTo(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V
    .locals 2

    .line 4476
    if-eqz p1, :cond_1

    .line 4479
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->deviceConnectedTo_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    if-eqz v0, :cond_0

    .line 4480
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4481
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->deviceConnectedTo_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    .line 4482
    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;

    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->deviceConnectedTo_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    goto :goto_0

    .line 4484
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->deviceConnectedTo_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    .line 4486
    :goto_0
    iget p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4487
    return-void

    .line 4477
    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method private mergeRfcommSession(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)V
    .locals 2

    .line 4558
    if-eqz p1, :cond_1

    .line 4561
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->rfcommSession_:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    if-eqz v0, :cond_0

    .line 4562
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4563
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->rfcommSession_:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    .line 4564
    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;

    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->rfcommSession_:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    goto :goto_0

    .line 4566
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->rfcommSession_:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    .line 4568
    :goto_0
    iget p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4569
    return-void

    .line 4559
    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public static newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 4789
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;
    .locals 1

    .line 4792
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4766
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4772
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4730
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4737
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4777
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4784
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4754
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4761
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4717
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4724
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4742
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4749
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;",
            ">;"
        }
    .end annotation

    .line 5320
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setA2DpSession(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;)V
    .locals 0

    .line 4628
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->a2DpSession_:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    .line 4629
    iget p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4630
    return-void
.end method

.method private setA2DpSession(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 4613
    if-eqz p1, :cond_0

    .line 4616
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->a2DpSession_:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    .line 4617
    iget p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4618
    return-void

    .line 4614
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setConnectionTechnologyType(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;)V
    .locals 1

    .line 4321
    if-eqz p1, :cond_0

    .line 4324
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4325
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->connectionTechnologyType_:I

    .line 4326
    return-void

    .line 4322
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setDeviceConnectedTo(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;)V
    .locals 0

    .line 4464
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->deviceConnectedTo_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    .line 4465
    iget p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4466
    return-void
.end method

.method private setDeviceConnectedTo(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V
    .locals 0

    .line 4449
    if-eqz p1, :cond_0

    .line 4452
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->deviceConnectedTo_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    .line 4453
    iget p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4454
    return-void

    .line 4450
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setDisconnectReason(Ljava/lang/String;)V
    .locals 1

    .line 4384
    if-eqz p1, :cond_0

    .line 4387
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4388
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->disconnectReason_:Ljava/lang/String;

    .line 4389
    return-void

    .line 4385
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setDisconnectReasonBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 4410
    if-eqz p1, :cond_0

    .line 4413
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4414
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->disconnectReason_:Ljava/lang/String;

    .line 4415
    return-void

    .line 4411
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setDisconnectReasonType(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;)V
    .locals 1

    .line 4696
    if-eqz p1, :cond_0

    .line 4699
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4700
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->disconnectReasonType_:I

    .line 4701
    return-void

    .line 4697
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setRfcommSession(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;)V
    .locals 0

    .line 4546
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->rfcommSession_:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    .line 4547
    iget p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4548
    return-void
.end method

.method private setRfcommSession(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)V
    .locals 0

    .line 4531
    if-eqz p1, :cond_0

    .line 4534
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->rfcommSession_:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    .line 4535
    iget p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4536
    return-void

    .line 4532
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setSessionDurationSec(J)V
    .locals 1

    .line 4273
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    .line 4274
    iput-wide p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->sessionDurationSec_:J

    .line 4275
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5247
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5298
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 5295
    :pswitch_0
    return-object p3

    .line 5292
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5277
    :pswitch_2
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->PARSER:Lcom/google/protobuf/Parser;

    .line 5278
    if-nez p1, :cond_1

    .line 5279
    const-class p2, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    monitor-enter p2

    .line 5280
    :try_start_0
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->PARSER:Lcom/google/protobuf/Parser;

    .line 5281
    if-nez p1, :cond_0

    .line 5282
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5285
    sput-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->PARSER:Lcom/google/protobuf/Parser;

    .line 5287
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5289
    :cond_1
    :goto_0
    return-object p1

    .line 5274
    :pswitch_3
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    return-object p1

    .line 5255
    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "sessionDurationSec_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "connectionTechnologyType_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 5259
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "disconnectReason_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "deviceConnectedTo_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "rfcommSession_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "a2DpSession_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "disconnectReasonType_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 5265
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    .line 5267
    nop

    .line 5270
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    const-string p3, "\u0001\u0007\u0000\u0001\u0002\u0008\u0007\u0000\u0000\u0000\u0002\u0002\u0000\u0003\u000c\u0001\u0004\u0008\u0002\u0005\t\u0003\u0006\t\u0004\u0007\t\u0005\u0008\u000c\u0006"

    invoke-static {p2, p3, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5252
    :pswitch_5
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$Builder;-><init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V

    return-object p1

    .line 5249
    :pswitch_6
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;

    invoke-direct {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getA2DpSession()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1

    .line 4603
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->a2DpSession_:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConnectionTechnologyType()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;
    .locals 1

    .line 4310
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->connectionTechnologyType_:I

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    move-result-object v0

    .line 4311
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;->CONNECTION_TECHNOLOGY_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$ConnectionTechnologyType;

    :cond_0
    return-object v0
.end method

.method public getDeviceConnectedTo()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1

    .line 4439
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->deviceConnectedTo_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDisconnectReason()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4361
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->disconnectReason_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectReasonBytes()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4373
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->disconnectReason_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectReasonType()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;
    .locals 1

    .line 4685
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->disconnectReasonType_:I

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    move-result-object v0

    .line 4686
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;->UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession$DisconnectReasonType;

    :cond_0
    return-object v0
.end method

.method public getRfcommSession()Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1

    .line 4521
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->rfcommSession_:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSessionDurationSec()J
    .locals 2

    .line 4263
    iget-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->sessionDurationSec_:J

    return-wide v0
.end method

.method public hasA2DpSession()Z
    .locals 1

    .line 4592
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasConnectionTechnologyType()Z
    .locals 1

    .line 4299
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeviceConnectedTo()Z
    .locals 1

    .line 4428
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDisconnectReason()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4350
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDisconnectReasonType()Z
    .locals 1

    .line 4674
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRfcommSession()Z
    .locals 1

    .line 4510
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSessionDurationSec()Z
    .locals 2

    .line 4252
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothSession;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
