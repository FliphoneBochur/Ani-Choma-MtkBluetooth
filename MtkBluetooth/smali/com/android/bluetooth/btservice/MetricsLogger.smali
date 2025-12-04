.class public Lcom/android/bluetooth/btservice/MetricsLogger;
.super Ljava/lang/Object;
.source "MetricsLogger.java"


# static fields
.field private static final sProfileConnectionCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/MetricsLogger;->sProfileConnectionCounts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpProto(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;)V
    .locals 3

    .line 50
    sget-object v0, Lcom/android/bluetooth/btservice/MetricsLogger;->sProfileConnectionCounts:Ljava/util/HashMap;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/btservice/MetricsLogger;->sProfileConnectionCounts:Ljava/util/HashMap;

    new-instance v2, Lcom/android/bluetooth/btservice/-$$Lambda$MetricsLogger$hpfdq7OwithG_Jc8upyFvO5SRk8;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/btservice/-$$Lambda$MetricsLogger$hpfdq7OwithG_Jc8upyFvO5SRk8;-><init>(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 57
    sget-object p0, Lcom/android/bluetooth/btservice/MetricsLogger;->sProfileConnectionCounts:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic lambda$dumpProto$0(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;Ljava/lang/Integer;)V
    .locals 1

    .line 52
    nop

    .line 53
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;->newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->setProfileId(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->setNumTimesConnected(I)Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->addProfileConnectionStats(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileConnectionStats;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;

    return-void
.end method

.method public static logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V
    .locals 4

    .line 38
    sget-object v0, Lcom/android/bluetooth/btservice/MetricsLogger;->sProfileConnectionCounts:Ljava/util/HashMap;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/btservice/MetricsLogger;->sProfileConnectionCounts:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/btservice/-$$Lambda$LrkJFe4YP5g-sc0rXJgTGXS3PRE;->INSTANCE:Lcom/android/bluetooth/btservice/-$$Lambda$LrkJFe4YP5g-sc0rXJgTGXS3PRE;

    invoke-virtual {v1, p0, v2, v3}, Ljava/util/HashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 40
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
