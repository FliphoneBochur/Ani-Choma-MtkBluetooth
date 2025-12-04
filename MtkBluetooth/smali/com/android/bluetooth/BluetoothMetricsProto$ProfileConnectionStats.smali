.class public final Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStatsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileConnectionStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStatsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

.field public static final NUM_TIMES_CONNECTED_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFILE_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private numTimesConnected_:I

.field private profileId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9986
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;-><init>()V

    .line 9989
    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    .line 9990
    const-class v1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9992
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9633
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 9634
    return-void
.end method

.method static synthetic access$15800()Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1

    .line 9628
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object v0
.end method

.method static synthetic access$15900(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V
    .locals 0

    .line 9628
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->setProfileId(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    return-void
.end method

.method static synthetic access$16000(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V
    .locals 0

    .line 9628
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->clearProfileId()V

    return-void
.end method

.method static synthetic access$16100(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;I)V
    .locals 0

    .line 9628
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->setNumTimesConnected(I)V

    return-void
.end method

.method static synthetic access$16200(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)V
    .locals 0

    .line 9628
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->clearNumTimesConnected()V

    return-void
.end method

.method private clearNumTimesConnected()V
    .locals 1

    .line 9730
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->bitField0_:I

    .line 9731
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->numTimesConnected_:I

    .line 9732
    return-void
.end method

.method private clearProfileId()V
    .locals 1

    .line 9683
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->bitField0_:I

    .line 9684
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->profileId_:I

    .line 9685
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1

    .line 9995
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;
    .locals 1

    .line 9809
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;
    .locals 1

    .line 9812
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9786
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9792
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9750
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9757
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9797
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9804
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9774
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9781
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9737
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9744
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9762
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9769
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;",
            ">;"
        }
    .end annotation

    .line 10001
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNumTimesConnected(I)V
    .locals 1

    .line 9719
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->bitField0_:I

    .line 9720
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->numTimesConnected_:I

    .line 9721
    return-void
.end method

.method private setProfileId(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V
    .locals 1

    .line 9669
    if-eqz p1, :cond_0

    .line 9672
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->bitField0_:I

    .line 9673
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->profileId_:I

    .line 9674
    return-void

    .line 9670
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9934
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9979
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 9976
    :pswitch_0
    return-object p3

    .line 9973
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9958
    :pswitch_2
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->PARSER:Lcom/google/protobuf/Parser;

    .line 9959
    if-nez p1, :cond_1

    .line 9960
    const-class p2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    monitor-enter p2

    .line 9961
    :try_start_0
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->PARSER:Lcom/google/protobuf/Parser;

    .line 9962
    if-nez p1, :cond_0

    .line 9963
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9966
    sput-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->PARSER:Lcom/google/protobuf/Parser;

    .line 9968
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 9970
    :cond_1
    :goto_0
    return-object p1

    .line 9955
    :pswitch_3
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    return-object p1

    .line 9942
    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "profileId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 9945
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "numTimesConnected_"

    aput-object p3, p1, p2

    .line 9948
    nop

    .line 9951
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u0004\u0001"

    invoke-static {p2, p3, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9939
    :pswitch_5
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;-><init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V

    return-object p1

    .line 9936
    :pswitch_6
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    invoke-direct {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;-><init>()V

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

.method public getNumTimesConnected()I
    .locals 1

    .line 9709
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->numTimesConnected_:I

    return v0
.end method

.method public getProfileId()Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;
    .locals 1

    .line 9658
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->profileId_:I

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    move-result-object v0

    .line 9659
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PROFILE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    :cond_0
    return-object v0
.end method

.method public hasNumTimesConnected()Z
    .locals 1

    .line 9698
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProfileId()Z
    .locals 2

    .line 9647
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
