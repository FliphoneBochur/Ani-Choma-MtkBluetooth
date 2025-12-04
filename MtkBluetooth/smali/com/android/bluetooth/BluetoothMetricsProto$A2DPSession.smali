.class public final Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BluetoothMetricsProto.java"

# interfaces
.implements Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSessionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/BluetoothMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "A2DPSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;",
        ">;",
        "Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSessionOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUDIO_DURATION_MILLIS_FIELD_NUMBER:I = 0x8

.field public static final BUFFER_OVERRUNS_MAX_COUNT_FIELD_NUMBER:I = 0x4

.field public static final BUFFER_OVERRUNS_TOTAL_FIELD_NUMBER:I = 0x5

.field public static final BUFFER_UNDERRUNS_AVERAGE_FIELD_NUMBER:I = 0x6

.field public static final BUFFER_UNDERRUNS_COUNT_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

.field public static final IS_A2DP_OFFLOAD_FIELD_NUMBER:I = 0xa

.field public static final MEDIA_TIMER_AVG_MILLIS_FIELD_NUMBER:I = 0x3

.field public static final MEDIA_TIMER_MAX_MILLIS_FIELD_NUMBER:I = 0x2

.field public static final MEDIA_TIMER_MIN_MILLIS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOURCE_CODEC_FIELD_NUMBER:I = 0x9


# instance fields
.field private audioDurationMillis_:J

.field private bitField0_:I

.field private bufferOverrunsMaxCount_:I

.field private bufferOverrunsTotal_:I

.field private bufferUnderrunsAverage_:F

.field private bufferUnderrunsCount_:I

.field private isA2DpOffload_:Z

.field private mediaTimerAvgMillis_:I

.field private mediaTimerMaxMillis_:I

.field private mediaTimerMinMillis_:I

.field private sourceCodec_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7033
    new-instance v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-direct {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;-><init>()V

    .line 7036
    sput-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    .line 7037
    const-class v1, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7039
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5919
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5920
    return-void
.end method

.method static synthetic access$10100()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1

    .line 5914
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;I)V
    .locals 0

    .line 5914
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->setMediaTimerMinMillis(I)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 5914
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->clearMediaTimerMinMillis()V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;I)V
    .locals 0

    .line 5914
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->setMediaTimerMaxMillis(I)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 5914
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->clearMediaTimerMaxMillis()V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;I)V
    .locals 0

    .line 5914
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->setMediaTimerAvgMillis(I)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 5914
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->clearMediaTimerAvgMillis()V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;I)V
    .locals 0

    .line 5914
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->setBufferOverrunsMaxCount(I)V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 5914
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->clearBufferOverrunsMaxCount()V

    return-void
.end method

.method static synthetic access$11000(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;I)V
    .locals 0

    .line 5914
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->setBufferOverrunsTotal(I)V

    return-void
.end method

.method static synthetic access$11100(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 5914
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->clearBufferOverrunsTotal()V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;F)V
    .locals 0

    .line 5914
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->setBufferUnderrunsAverage(F)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 5914
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->clearBufferUnderrunsAverage()V

    return-void
.end method

.method static synthetic access$11400(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;I)V
    .locals 0

    .line 5914
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->setBufferUnderrunsCount(I)V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 5914
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->clearBufferUnderrunsCount()V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;J)V
    .locals 0

    .line 5914
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->setAudioDurationMillis(J)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 5914
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->clearAudioDurationMillis()V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;)V
    .locals 0

    .line 5914
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->setSourceCodec(Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 5914
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->clearSourceCodec()V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;Z)V
    .locals 0

    .line 5914
    invoke-direct {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->setIsA2DpOffload(Z)V

    return-void
.end method

.method static synthetic access$12100(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)V
    .locals 0

    .line 5914
    invoke-direct {p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->clearIsA2DpOffload()V

    return-void
.end method

.method private clearAudioDurationMillis()V
    .locals 2

    .line 6294
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6295
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->audioDurationMillis_:J

    .line 6296
    return-void
.end method

.method private clearBufferOverrunsMaxCount()V
    .locals 1

    .line 6106
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6107
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bufferOverrunsMaxCount_:I

    .line 6108
    return-void
.end method

.method private clearBufferOverrunsTotal()V
    .locals 1

    .line 6153
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6154
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bufferOverrunsTotal_:I

    .line 6155
    return-void
.end method

.method private clearBufferUnderrunsAverage()V
    .locals 1

    .line 6200
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6201
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bufferUnderrunsAverage_:F

    .line 6202
    return-void
.end method

.method private clearBufferUnderrunsCount()V
    .locals 1

    .line 6247
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6248
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bufferUnderrunsCount_:I

    .line 6249
    return-void
.end method

.method private clearIsA2DpOffload()V
    .locals 1

    .line 6392
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->isA2DpOffload_:Z

    .line 6394
    return-void
.end method

.method private clearMediaTimerAvgMillis()V
    .locals 1

    .line 6059
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6060
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->mediaTimerAvgMillis_:I

    .line 6061
    return-void
.end method

.method private clearMediaTimerMaxMillis()V
    .locals 1

    .line 6012
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6013
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->mediaTimerMaxMillis_:I

    .line 6014
    return-void
.end method

.method private clearMediaTimerMinMillis()V
    .locals 1

    .line 5965
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 5966
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->mediaTimerMinMillis_:I

    .line 5967
    return-void
.end method

.method private clearSourceCodec()V
    .locals 1

    .line 6345
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6346
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->sourceCodec_:I

    .line 6347
    return-void
.end method

.method public static getDefaultInstance()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1

    .line 7042
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6471
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;
    .locals 1

    .line 6474
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6448
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6454
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6412
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6419
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6459
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6466
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6436
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6443
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6399
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6406
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6424
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6431
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;",
            ">;"
        }
    .end annotation

    .line 7048
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAudioDurationMillis(J)V
    .locals 1

    .line 6283
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6284
    iput-wide p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->audioDurationMillis_:J

    .line 6285
    return-void
.end method

.method private setBufferOverrunsMaxCount(I)V
    .locals 1

    .line 6095
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6096
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bufferOverrunsMaxCount_:I

    .line 6097
    return-void
.end method

.method private setBufferOverrunsTotal(I)V
    .locals 1

    .line 6142
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6143
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bufferOverrunsTotal_:I

    .line 6144
    return-void
.end method

.method private setBufferUnderrunsAverage(F)V
    .locals 1

    .line 6189
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6190
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bufferUnderrunsAverage_:F

    .line 6191
    return-void
.end method

.method private setBufferUnderrunsCount(I)V
    .locals 1

    .line 6236
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6237
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bufferUnderrunsCount_:I

    .line 6238
    return-void
.end method

.method private setIsA2DpOffload(Z)V
    .locals 1

    .line 6381
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6382
    iput-boolean p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->isA2DpOffload_:Z

    .line 6383
    return-void
.end method

.method private setMediaTimerAvgMillis(I)V
    .locals 1

    .line 6048
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6049
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->mediaTimerAvgMillis_:I

    .line 6050
    return-void
.end method

.method private setMediaTimerMaxMillis(I)V
    .locals 1

    .line 6001
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6002
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->mediaTimerMaxMillis_:I

    .line 6003
    return-void
.end method

.method private setMediaTimerMinMillis(I)V
    .locals 1

    .line 5954
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 5955
    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->mediaTimerMinMillis_:I

    .line 5956
    return-void
.end method

.method private setSourceCodec(Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;)V
    .locals 1

    .line 6331
    if-eqz p1, :cond_0

    .line 6334
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    .line 6335
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->sourceCodec_:I

    .line 6336
    return-void

    .line 6332
    :cond_0
    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6972
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7026
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 7023
    :pswitch_0
    return-object p3

    .line 7020
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7005
    :pswitch_2
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->PARSER:Lcom/google/protobuf/Parser;

    .line 7006
    if-nez p1, :cond_1

    .line 7007
    const-class p2, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    monitor-enter p2

    .line 7008
    :try_start_0
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->PARSER:Lcom/google/protobuf/Parser;

    .line 7009
    if-nez p1, :cond_0

    .line 7010
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7013
    sput-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->PARSER:Lcom/google/protobuf/Parser;

    .line 7015
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7017
    :cond_1
    :goto_0
    return-object p1

    .line 7002
    :pswitch_3
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    return-object p1

    .line 6980
    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "mediaTimerMinMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "mediaTimerMaxMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "mediaTimerAvgMillis_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "bufferOverrunsMaxCount_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "bufferOverrunsTotal_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "bufferUnderrunsAverage_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "bufferUnderrunsCount_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "audioDurationMillis_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "sourceCodec_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    .line 6991
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "isA2DpOffload_"

    aput-object p3, p1, p2

    .line 6994
    nop

    .line 6998
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->DEFAULT_INSTANCE:Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    const-string p3, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001\u0003\u0004\u0002\u0004\u0004\u0003\u0005\u0004\u0004\u0006\u0001\u0005\u0007\u0004\u0006\u0008\u0002\u0007\t\u000c\u0008\n\u0007\t"

    invoke-static {p2, p3, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6977
    :pswitch_5
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;

    invoke-direct {p1, p3}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession$Builder;-><init>(Lcom/android/bluetooth/BluetoothMetricsProto$1;)V

    return-object p1

    .line 6974
    :pswitch_6
    new-instance p1, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;

    invoke-direct {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;-><init>()V

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

.method public getAudioDurationMillis()J
    .locals 2

    .line 6273
    iget-wide v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->audioDurationMillis_:J

    return-wide v0
.end method

.method public getBufferOverrunsMaxCount()I
    .locals 1

    .line 6085
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bufferOverrunsMaxCount_:I

    return v0
.end method

.method public getBufferOverrunsTotal()I
    .locals 1

    .line 6132
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bufferOverrunsTotal_:I

    return v0
.end method

.method public getBufferUnderrunsAverage()F
    .locals 1

    .line 6179
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bufferUnderrunsAverage_:F

    return v0
.end method

.method public getBufferUnderrunsCount()I
    .locals 1

    .line 6226
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bufferUnderrunsCount_:I

    return v0
.end method

.method public getIsA2DpOffload()Z
    .locals 1

    .line 6371
    iget-boolean v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->isA2DpOffload_:Z

    return v0
.end method

.method public getMediaTimerAvgMillis()I
    .locals 1

    .line 6038
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->mediaTimerAvgMillis_:I

    return v0
.end method

.method public getMediaTimerMaxMillis()I
    .locals 1

    .line 5991
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->mediaTimerMaxMillis_:I

    return v0
.end method

.method public getMediaTimerMinMillis()I
    .locals 1

    .line 5944
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->mediaTimerMinMillis_:I

    return v0
.end method

.method public getSourceCodec()Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;
    .locals 1

    .line 6320
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->sourceCodec_:I

    invoke-static {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->forNumber(I)Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    move-result-object v0

    .line 6321
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;->A2DP_SOURCE_CODEC_UNKNOWN:Lcom/android/bluetooth/BluetoothMetricsProto$A2dpSourceCodec;

    :cond_0
    return-object v0
.end method

.method public hasAudioDurationMillis()Z
    .locals 1

    .line 6262
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBufferOverrunsMaxCount()Z
    .locals 1

    .line 6074
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBufferOverrunsTotal()Z
    .locals 1

    .line 6121
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBufferUnderrunsAverage()Z
    .locals 1

    .line 6168
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBufferUnderrunsCount()Z
    .locals 1

    .line 6215
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIsA2DpOffload()Z
    .locals 1

    .line 6360
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMediaTimerAvgMillis()Z
    .locals 1

    .line 6027
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMediaTimerMaxMillis()Z
    .locals 1

    .line 5980
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMediaTimerMinMillis()Z
    .locals 2

    .line 5933
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSourceCodec()Z
    .locals 1

    .line 6309
    iget v0, p0, Lcom/android/bluetooth/BluetoothMetricsProto$A2DPSession;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
