.class public final Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RFCommSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSessionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final RX_BYTES_FIELD_NUMBER:I = 0x1

.field public static final TX_BYTES_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private rxBytes_:I

.field private txBytes_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5714
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;-><init>()V

    .line 5717
    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    .line 5718
    const-class v1, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5720
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5370
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5371
    return-void
.end method

.method static synthetic access$9500()Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1

    .line 5365
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;I)V
    .locals 0

    .line 5365
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->setRxBytes(I)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)V
    .locals 0

    .line 5365
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->clearRxBytes()V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;I)V
    .locals 0

    .line 5365
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->setTxBytes(I)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)V
    .locals 0

    .line 5365
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->clearTxBytes()V

    return-void
.end method

.method private clearRxBytes()V
    .locals 1

    .line 5416
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->bitField0_:I

    .line 5417
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->rxBytes_:I

    .line 5418
    return-void
.end method

.method private clearTxBytes()V
    .locals 1

    .line 5463
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->bitField0_:I

    .line 5464
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->txBytes_:I

    .line 5465
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1

    .line 5723
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;
    .locals 1

    .line 5542
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;
    .locals 1

    .line 5545
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5519
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5525
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5483
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5490
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5530
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5537
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5507
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5514
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5470
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5477
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5495
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5502
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;",
            ">;"
        }
    .end annotation

    .line 5729
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setRxBytes(I)V
    .locals 1

    .line 5405
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->bitField0_:I

    .line 5406
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->rxBytes_:I

    .line 5407
    return-void
.end method

.method private setTxBytes(I)V
    .locals 1

    .line 5452
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->bitField0_:I

    .line 5453
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->txBytes_:I

    .line 5454
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5663
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5707
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 5704
    :pswitch_0
    return-object p3

    .line 5701
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5686
    :pswitch_2
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->PARSER:Lcom/google/protobuf/Parser;

    .line 5687
    if-nez p1, :cond_1

    .line 5688
    const-class p2, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    monitor-enter p2

    .line 5689
    :try_start_0
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->PARSER:Lcom/google/protobuf/Parser;

    .line 5690
    if-nez p1, :cond_0

    .line 5691
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5694
    sput-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->PARSER:Lcom/google/protobuf/Parser;

    .line 5696
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 5698
    :cond_1
    :goto_0
    return-object p1

    .line 5683
    :pswitch_3
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    return-object p1

    .line 5671
    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "rxBytes_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "txBytes_"

    aput-object p3, p1, p2

    .line 5676
    nop

    .line 5679
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001"

    invoke-static {p2, p3, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5668
    :pswitch_5
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession$Builder;-><init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V

    return-object p1

    .line 5665
    :pswitch_6
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;

    invoke-direct {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;-><init>()V

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

.method public getRxBytes()I
    .locals 1

    .line 5395
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->rxBytes_:I

    return v0
.end method

.method public getTxBytes()I
    .locals 1

    .line 5442
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->txBytes_:I

    return v0
.end method

.method public hasRxBytes()Z
    .locals 2

    .line 5384
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTxBytes()Z
    .locals 1

    .line 5431
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$RFCommSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
