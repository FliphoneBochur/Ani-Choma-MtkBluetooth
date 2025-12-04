.class public final Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$WakeEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;,
        Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEventOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

.field public static final EVENT_TIME_MILLIS_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUESTOR_FIELD_NUMBER:I = 0x2

.field public static final WAKE_EVENT_TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private eventTimeMillis_:J

.field private name_:Ljava/lang/String;

.field private requestor_:Ljava/lang/String;

.field private wakeEventType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8521
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;-><init>()V

    .line 8524
    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    .line 8525
    const-class v1, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8527
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7743
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7744
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->requestor_:Ljava/lang/String;

    .line 7745
    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->name_:Ljava/lang/String;

    .line 7746
    return-void
.end method

.method static synthetic access$13300()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1

    .line 7738
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->setWakeEventType(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;)V

    return-void
.end method

.method static synthetic access$13500(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V
    .locals 0

    .line 7738
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->clearWakeEventType()V

    return-void
.end method

.method static synthetic access$13600(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;Ljava/lang/String;)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->setRequestor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13700(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V
    .locals 0

    .line 7738
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->clearRequestor()V

    return-void
.end method

.method static synthetic access$13800(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->setRequestorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;Ljava/lang/String;)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14000(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V
    .locals 0

    .line 7738
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->clearName()V

    return-void
.end method

.method static synthetic access$14100(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14200(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;J)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->setEventTimeMillis(J)V

    return-void
.end method

.method static synthetic access$14300(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)V
    .locals 0

    .line 7738
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->clearEventTimeMillis()V

    return-void
.end method

.method private clearEventTimeMillis()V
    .locals 2

    .line 8115
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    .line 8116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->eventTimeMillis_:J

    .line 8117
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 8053
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    .line 8054
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->name_:Ljava/lang/String;

    .line 8055
    return-void
.end method

.method private clearRequestor()V
    .locals 1

    .line 7974
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    .line 7975
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->getRequestor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->requestor_:Ljava/lang/String;

    .line 7976
    return-void
.end method

.method private clearWakeEventType()V
    .locals 1

    .line 7906
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    .line 7907
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->wakeEventType_:I

    .line 7908
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1

    .line 8530
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
    .locals 1

    .line 8194
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;
    .locals 1

    .line 8197
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8171
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8177
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8135
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8142
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8182
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8189
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8159
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8166
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8122
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8129
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8147
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8154
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;",
            ">;"
        }
    .end annotation

    .line 8536
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEventTimeMillis(J)V
    .locals 1

    .line 8104
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    .line 8105
    iput-wide p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->eventTimeMillis_:J

    .line 8106
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1

    .line 8039
    if-eqz p1, :cond_0

    .line 8042
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    .line 8043
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->name_:Ljava/lang/String;

    .line 8044
    return-void

    .line 8040
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 8065
    if-eqz p1, :cond_0

    .line 8068
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    .line 8069
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->name_:Ljava/lang/String;

    .line 8070
    return-void

    .line 8066
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setRequestor(Ljava/lang/String;)V
    .locals 1

    .line 7959
    if-eqz p1, :cond_0

    .line 7962
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    .line 7963
    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->requestor_:Ljava/lang/String;

    .line 7964
    return-void

    .line 7960
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setRequestorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 7987
    if-eqz p1, :cond_0

    .line 7990
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    .line 7991
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->requestor_:Ljava/lang/String;

    .line 7992
    return-void

    .line 7988
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setWakeEventType(Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;)V
    .locals 1

    .line 7892
    if-eqz p1, :cond_0

    .line 7895
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    .line 7896
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->wakeEventType_:I

    .line 7897
    return-void

    .line 7893
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 8467
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8514
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 8511
    :pswitch_0
    return-object p3

    .line 8508
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8493
    :pswitch_2
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 8494
    if-nez p1, :cond_1

    .line 8495
    const-class p2, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    monitor-enter p2

    .line 8496
    :try_start_0
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 8497
    if-nez p1, :cond_0

    .line 8498
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8501
    sput-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 8503
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8505
    :cond_1
    :goto_0
    return-object p1

    .line 8490
    :pswitch_3
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    return-object p1

    .line 8475
    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "wakeEventType_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 8478
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "requestor_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "name_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "eventTimeMillis_"

    aput-object p3, p1, p2

    .line 8483
    nop

    .line 8486
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u0008\u0001\u0003\u0008\u0002\u0004\u0002\u0003"

    invoke-static {p2, p3, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8472
    :pswitch_5
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$Builder;-><init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V

    return-object p1

    .line 8469
    :pswitch_6
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;

    invoke-direct {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;-><init>()V

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

.method public getEventTimeMillis()J
    .locals 2

    .line 8094
    iget-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->eventTimeMillis_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 8016
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8028
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestor()Ljava/lang/String;
    .locals 1

    .line 7934
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->requestor_:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7947
    iget-object v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->requestor_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWakeEventType()Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;
    .locals 1

    .line 7881
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->wakeEventType_:I

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    move-result-object v0

    .line 7882
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;->UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent$WakeEventType;

    :cond_0
    return-object v0
.end method

.method public hasEventTimeMillis()Z
    .locals 1

    .line 8083
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasName()Z
    .locals 1

    .line 8005
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRequestor()Z
    .locals 1

    .line 7922
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWakeEventType()Z
    .locals 2

    .line 7870
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$WakeEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
