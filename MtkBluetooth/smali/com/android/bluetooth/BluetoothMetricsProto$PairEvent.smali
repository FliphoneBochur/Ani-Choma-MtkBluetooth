.class public final Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$PairEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PairEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$PairEventOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

.field public static final DEVICE_PAIRED_WITH_FIELD_NUMBER:I = 0x3

.field public static final DISCONNECT_REASON_FIELD_NUMBER:I = 0x1

.field public static final EVENT_TIME_MILLIS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private devicePairedWith_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

.field private disconnectReason_:I

.field private eventTimeMillis_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7623
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;-><init>()V

    .line 7626
    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    .line 7627
    const-class v1, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7629
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7117
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7118
    return-void
.end method

.method static synthetic access$12300()Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1

    .line 7112
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;I)V
    .locals 0

    .line 7112
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->setDisconnectReason(I)V

    return-void
.end method

.method static synthetic access$12500(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V
    .locals 0

    .line 7112
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->clearDisconnectReason()V

    return-void
.end method

.method static synthetic access$12600(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;J)V
    .locals 0

    .line 7112
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->setEventTimeMillis(J)V

    return-void
.end method

.method static synthetic access$12700(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V
    .locals 0

    .line 7112
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->clearEventTimeMillis()V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V
    .locals 0

    .line 7112
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->setDevicePairedWith(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V

    return-void
.end method

.method static synthetic access$12900(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;)V
    .locals 0

    .line 7112
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->setDevicePairedWith(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;)V

    return-void
.end method

.method static synthetic access$13000(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V
    .locals 0

    .line 7112
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->mergeDevicePairedWith(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V

    return-void
.end method

.method static synthetic access$13100(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)V
    .locals 0

    .line 7112
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->clearDevicePairedWith()V

    return-void
.end method

.method private clearDevicePairedWith()V
    .locals 1

    .line 7296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->devicePairedWith_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    .line 7297
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    .line 7298
    return-void
.end method

.method private clearDisconnectReason()V
    .locals 1

    .line 7167
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    .line 7168
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->disconnectReason_:I

    .line 7169
    return-void
.end method

.method private clearEventTimeMillis()V
    .locals 2

    .line 7214
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    .line 7215
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->eventTimeMillis_:J

    .line 7216
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1

    .line 7632
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object v0
.end method

.method private mergeDevicePairedWith(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V
    .locals 2

    .line 7277
    if-eqz p1, :cond_1

    .line 7280
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->devicePairedWith_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    if-eqz v0, :cond_0

    .line 7281
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7282
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->devicePairedWith_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    .line 7283
    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;

    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->devicePairedWith_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    goto :goto_0

    .line 7285
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->devicePairedWith_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    .line 7287
    :goto_0
    iget p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    .line 7288
    return-void

    .line 7278
    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public static newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;
    .locals 1

    .line 7375
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;
    .locals 1

    .line 7378
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7352
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7358
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7316
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7323
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7363
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7370
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7340
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7347
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7303
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7310
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7328
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7335
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;",
            ">;"
        }
    .end annotation

    .line 7638
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDevicePairedWith(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;)V
    .locals 0

    .line 7265
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->devicePairedWith_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    .line 7266
    iget p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    .line 7267
    return-void
.end method

.method private setDevicePairedWith(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V
    .locals 0

    .line 7250
    if-eqz p1, :cond_0

    .line 7253
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->devicePairedWith_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    .line 7254
    iget p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    .line 7255
    return-void

    .line 7251
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setDisconnectReason(I)V
    .locals 1

    .line 7155
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    .line 7156
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->disconnectReason_:I

    .line 7157
    return-void
.end method

.method private setEventTimeMillis(J)V
    .locals 1

    .line 7203
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    .line 7204
    iput-wide p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->eventTimeMillis_:J

    .line 7205
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7571
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7616
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 7613
    :pswitch_0
    return-object p3

    .line 7610
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7595
    :pswitch_2
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 7596
    if-nez p1, :cond_1

    .line 7597
    const-class p2, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    monitor-enter p2

    .line 7598
    :try_start_0
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 7599
    if-nez p1, :cond_0

    .line 7600
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7603
    sput-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 7605
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7607
    :cond_1
    :goto_0
    return-object p1

    .line 7592
    :pswitch_3
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    return-object p1

    .line 7579
    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "disconnectReason_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "eventTimeMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "devicePairedWith_"

    aput-object p3, p1, p2

    .line 7585
    nop

    .line 7588
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0002\u0001\u0003\t\u0002"

    invoke-static {p2, p3, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7576
    :pswitch_5
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent$Builder;-><init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V

    return-object p1

    .line 7573
    :pswitch_6
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;

    invoke-direct {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;-><init>()V

    return-object p1

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

.method public getDevicePairedWith()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1

    .line 7240
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->devicePairedWith_:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDisconnectReason()I
    .locals 1

    .line 7144
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->disconnectReason_:I

    return v0
.end method

.method public getEventTimeMillis()J
    .locals 2

    .line 7193
    iget-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->eventTimeMillis_:J

    return-wide v0
.end method

.method public hasDevicePairedWith()Z
    .locals 1

    .line 7229
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDisconnectReason()Z
    .locals 2

    .line 7132
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasEventTimeMillis()Z
    .locals 1

    .line 7182
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$PairEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
