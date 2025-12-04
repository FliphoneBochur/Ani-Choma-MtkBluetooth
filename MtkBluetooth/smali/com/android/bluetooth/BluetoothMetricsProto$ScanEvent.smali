.class public final Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$ScanEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScanEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;,
        Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;,
        Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEventOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

.field public static final EVENT_TIME_MILLIS_FIELD_NUMBER:I = 0x5

.field public static final INITIATOR_FIELD_NUMBER:I = 0x2

.field public static final NUMBER_RESULTS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCAN_EVENT_TYPE_FIELD_NUMBER:I = 0x1

.field public static final SCAN_TECHNOLOGY_TYPE_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private eventTimeMillis_:J

.field private initiator_:Ljava/lang/String;

.field private numberResults_:I

.field private scanEventType_:I

.field private scanTechnologyType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9564
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;-><init>()V

    .line 9567
    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    .line 9568
    const-class v1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9570
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8649
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8650
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->initiator_:Ljava/lang/String;

    .line 8651
    return-void
.end method

.method static synthetic access$14500()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1

    .line 8644
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object v0
.end method

.method static synthetic access$14600(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;)V
    .locals 0

    .line 8644
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->setScanEventType(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;)V

    return-void
.end method

.method static synthetic access$14700(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V
    .locals 0

    .line 8644
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->clearScanEventType()V

    return-void
.end method

.method static synthetic access$14800(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;Ljava/lang/String;)V
    .locals 0

    .line 8644
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->setInitiator(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14900(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V
    .locals 0

    .line 8644
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->clearInitiator()V

    return-void
.end method

.method static synthetic access$15000(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8644
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->setInitiatorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15100(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;)V
    .locals 0

    .line 8644
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->setScanTechnologyType(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;)V

    return-void
.end method

.method static synthetic access$15200(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V
    .locals 0

    .line 8644
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->clearScanTechnologyType()V

    return-void
.end method

.method static synthetic access$15300(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;I)V
    .locals 0

    .line 8644
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->setNumberResults(I)V

    return-void
.end method

.method static synthetic access$15400(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V
    .locals 0

    .line 8644
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->clearNumberResults()V

    return-void
.end method

.method static synthetic access$15500(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;J)V
    .locals 0

    .line 8644
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->setEventTimeMillis(J)V

    return-void
.end method

.method static synthetic access$15600(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V
    .locals 0

    .line 8644
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->clearEventTimeMillis()V

    return-void
.end method

.method private clearEventTimeMillis()V
    .locals 2

    .line 9135
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    .line 9136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->eventTimeMillis_:J

    .line 9137
    return-void
.end method

.method private clearInitiator()V
    .locals 1

    .line 8974
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    .line 8975
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->getInitiator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->initiator_:Ljava/lang/String;

    .line 8976
    return-void
.end method

.method private clearNumberResults()V
    .locals 1

    .line 9088
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    .line 9089
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->numberResults_:I

    .line 9090
    return-void
.end method

.method private clearScanEventType()V
    .locals 1

    .line 8906
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    .line 8907
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->scanEventType_:I

    .line 8908
    return-void
.end method

.method private clearScanTechnologyType()V
    .locals 1

    .line 9041
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    .line 9042
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->scanTechnologyType_:I

    .line 9043
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1

    .line 9573
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9214
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;
    .locals 1

    .line 9217
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9191
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9197
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9155
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9162
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9202
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9209
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9179
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9186
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9142
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9149
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9167
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9174
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;",
            ">;"
        }
    .end annotation

    .line 9579
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEventTimeMillis(J)V
    .locals 1

    .line 9124
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    .line 9125
    iput-wide p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->eventTimeMillis_:J

    .line 9126
    return-void
.end method

.method private setInitiator(Ljava/lang/String;)V
    .locals 1

    .line 8959
    if-eqz p1, :cond_0

    .line 8962
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    .line 8963
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->initiator_:Ljava/lang/String;

    .line 8964
    return-void

    .line 8960
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setInitiatorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 8987
    if-eqz p1, :cond_0

    .line 8990
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    .line 8991
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->initiator_:Ljava/lang/String;

    .line 8992
    return-void

    .line 8988
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setNumberResults(I)V
    .locals 1

    .line 9077
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    .line 9078
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->numberResults_:I

    .line 9079
    return-void
.end method

.method private setScanEventType(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;)V
    .locals 1

    .line 8892
    if-eqz p1, :cond_0

    .line 8895
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    .line 8896
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->scanEventType_:I

    .line 8897
    return-void

    .line 8893
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setScanTechnologyType(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;)V
    .locals 1

    .line 9027
    if-eqz p1, :cond_0

    .line 9030
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    .line 9031
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->scanTechnologyType_:I

    .line 9032
    return-void

    .line 9028
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9508
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9557
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 9554
    :pswitch_0
    return-object p3

    .line 9551
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9536
    :pswitch_2
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 9537
    if-nez p1, :cond_1

    .line 9538
    const-class p2, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    monitor-enter p2

    .line 9539
    :try_start_0
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 9540
    if-nez p1, :cond_0

    .line 9541
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9544
    sput-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 9546
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9548
    :cond_1
    :goto_0
    return-object p1

    .line 9533
    :pswitch_3
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    return-object p1

    .line 9516
    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "scanEventType_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 9519
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "initiator_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "scanTechnologyType_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 9522
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "numberResults_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "eventTimeMillis_"

    aput-object p3, p1, p2

    .line 9526
    nop

    .line 9529
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u0008\u0001\u0003\u000c\u0002\u0004\u0004\u0003\u0005\u0002\u0004"

    invoke-static {p2, p3, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9513
    :pswitch_5
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;-><init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V

    return-object p1

    .line 9510
    :pswitch_6
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    invoke-direct {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;-><init>()V

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

.method public getEventTimeMillis()J
    .locals 2

    .line 9114
    iget-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->eventTimeMillis_:J

    return-wide v0
.end method

.method public getInitiator()Ljava/lang/String;
    .locals 1

    .line 8934
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->initiator_:Ljava/lang/String;

    return-object v0
.end method

.method public getInitiatorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8947
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->initiator_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumberResults()I
    .locals 1

    .line 9067
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->numberResults_:I

    return v0
.end method

.method public getScanEventType()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;
    .locals 1

    .line 8881
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->scanEventType_:I

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    move-result-object v0

    .line 8882
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->SCAN_EVENT_START:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    :cond_0
    return-object v0
.end method

.method public getScanTechnologyType()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;
    .locals 1

    .line 9016
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->scanTechnologyType_:I

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    move-result-object v0

    .line 9017
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    :cond_0
    return-object v0
.end method

.method public hasEventTimeMillis()Z
    .locals 1

    .line 9103
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInitiator()Z
    .locals 1

    .line 8922
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNumberResults()Z
    .locals 1

    .line 9056
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasScanEventType()Z
    .locals 2

    .line 8870
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasScanTechnologyType()Z
    .locals 1

    .line 9005
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
