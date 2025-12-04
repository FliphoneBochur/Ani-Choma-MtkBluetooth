.class public final Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStatsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeadsetProfileConnectionStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStatsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

.field public static final HEADSET_PROFILE_TYPE_FIELD_NUMBER:I = 0x1

.field public static final NUM_TIMES_CONNECTED_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private headsetProfileType_:I

.field private numTimesConnected_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10408
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;-><init>()V

    .line 10411
    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    .line 10412
    const-class v1, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10414
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10055
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10056
    return-void
.end method

.method static synthetic access$16400()Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1

    .line 10050
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object v0
.end method

.method static synthetic access$16500(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;)V
    .locals 0

    .line 10050
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->setHeadsetProfileType(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;)V

    return-void
.end method

.method static synthetic access$16600(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V
    .locals 0

    .line 10050
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->clearHeadsetProfileType()V

    return-void
.end method

.method static synthetic access$16700(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;I)V
    .locals 0

    .line 10050
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->setNumTimesConnected(I)V

    return-void
.end method

.method static synthetic access$16800(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)V
    .locals 0

    .line 10050
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->clearNumTimesConnected()V

    return-void
.end method

.method private clearHeadsetProfileType()V
    .locals 1

    .line 10105
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->bitField0_:I

    .line 10106
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->headsetProfileType_:I

    .line 10107
    return-void
.end method

.method private clearNumTimesConnected()V
    .locals 1

    .line 10152
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->bitField0_:I

    .line 10153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->numTimesConnected_:I

    .line 10154
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1

    .line 10417
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;
    .locals 1

    .line 10231
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;
    .locals 1

    .line 10234
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10208
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10214
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10172
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10179
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10219
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10226
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10196
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10203
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10159
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10166
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10184
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10191
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;",
            ">;"
        }
    .end annotation

    .line 10423
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHeadsetProfileType(Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;)V
    .locals 1

    .line 10091
    if-eqz p1, :cond_0

    .line 10094
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->bitField0_:I

    .line 10095
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->headsetProfileType_:I

    .line 10096
    return-void

    .line 10092
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method private setNumTimesConnected(I)V
    .locals 1

    .line 10141
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->bitField0_:I

    .line 10142
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->numTimesConnected_:I

    .line 10143
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10356
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10401
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 10398
    :pswitch_0
    return-object p3

    .line 10395
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10380
    :pswitch_2
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->PARSER:Lcom/google/protobuf/Parser;

    .line 10381
    if-nez p1, :cond_1

    .line 10382
    const-class p2, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    monitor-enter p2

    .line 10383
    :try_start_0
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->PARSER:Lcom/google/protobuf/Parser;

    .line 10384
    if-nez p1, :cond_0

    .line 10385
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10388
    sput-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->PARSER:Lcom/google/protobuf/Parser;

    .line 10390
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 10392
    :cond_1
    :goto_0
    return-object p1

    .line 10377
    :pswitch_3
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    return-object p1

    .line 10364
    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "headsetProfileType_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 10367
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "numTimesConnected_"

    aput-object p3, p1, p2

    .line 10370
    nop

    .line 10373
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u0004\u0001"

    invoke-static {p2, p3, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10361
    :pswitch_5
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats$Builder;-><init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V

    return-object p1

    .line 10358
    :pswitch_6
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;

    invoke-direct {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;-><init>()V

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

.method public getHeadsetProfileType()Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;
    .locals 1

    .line 10080
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->headsetProfileType_:I

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    move-result-object v0

    .line 10081
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;->HEADSET_PROFILE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileType;

    :cond_0
    return-object v0
.end method

.method public getNumTimesConnected()I
    .locals 1

    .line 10131
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->numTimesConnected_:I

    return v0
.end method

.method public hasHeadsetProfileType()Z
    .locals 2

    .line 10069
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNumTimesConnected()Z
    .locals 1

    .line 10120
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$HeadsetProfileConnectionStats;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
