.class public final Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;,
        Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

.field public static final DEVICE_CLASS_FIELD_NUMBER:I = 0x1

.field public static final DEVICE_TYPE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private deviceClass_:I

.field private deviceType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3876
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;-><init>()V

    .line 3879
    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    .line 3880
    const-class v1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3882
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3403
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3404
    return-void
.end method

.method static synthetic access$6600()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1

    .line 3398
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;I)V
    .locals 0

    .line 3398
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->setDeviceClass(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V
    .locals 0

    .line 3398
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->clearDeviceClass()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;)V
    .locals 0

    .line 3398
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->setDeviceType(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)V
    .locals 0

    .line 3398
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->clearDeviceType()V

    return-void
.end method

.method private clearDeviceClass()V
    .locals 1

    .line 3565
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->bitField0_:I

    .line 3566
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->deviceClass_:I

    .line 3567
    return-void
.end method

.method private clearDeviceType()V
    .locals 1

    .line 3616
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->bitField0_:I

    .line 3617
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->deviceType_:I

    .line 3618
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1

    .line 3885
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;
    .locals 1

    .line 3695
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;
    .locals 1

    .line 3698
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3672
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3678
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3636
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3643
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3683
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3690
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3660
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3667
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3623
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3630
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3648
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3655
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 3891
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDeviceClass(I)V
    .locals 1

    .line 3553
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->bitField0_:I

    .line 3554
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->deviceClass_:I

    .line 3555
    return-void
.end method

.method private setDeviceType(Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;)V
    .locals 1

    .line 3602
    if-eqz p1, :cond_0

    .line 3605
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->bitField0_:I

    .line 3606
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->deviceType_:I

    .line 3607
    return-void

    .line 3603
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3824
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3869
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3866
    :pswitch_0
    return-object p3

    .line 3863
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3848
    :pswitch_2
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 3849
    if-nez p1, :cond_1

    .line 3850
    const-class p2, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    monitor-enter p2

    .line 3851
    :try_start_0
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 3852
    if-nez p1, :cond_0

    .line 3853
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3856
    sput-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 3858
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 3860
    :cond_1
    :goto_0
    return-object p1

    .line 3845
    :pswitch_3
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    return-object p1

    .line 3832
    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "deviceClass_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "deviceType_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 3836
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    .line 3838
    nop

    .line 3841
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u000c\u0001"

    invoke-static {p2, p3, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3829
    :pswitch_5
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$Builder;-><init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V

    return-object p1

    .line 3826
    :pswitch_6
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;

    invoke-direct {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;-><init>()V

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

.method public getDeviceClass()I
    .locals 1

    .line 3542
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->deviceClass_:I

    return v0
.end method

.method public getDeviceType()Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;
    .locals 1

    .line 3591
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->deviceType_:I

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    move-result-object v0

    .line 3592
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;->DEVICE_TYPE_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo$DeviceType;

    :cond_0
    return-object v0
.end method

.method public hasDeviceClass()Z
    .locals 2

    .line 3530
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDeviceType()Z
    .locals 1

    .line 3580
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$DeviceInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
