.class Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
.super Ljava/lang/Object;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanNative"
.end annotation


# static fields
.field private static final ALL_PASS_FILTER_INDEX_BATCH_SCAN:I = 0x2

.field private static final ALL_PASS_FILTER_INDEX_REGULAR_SCAN:I = 0x1

.field private static final ALL_PASS_FILTER_SELECTION:I = 0x0

.field private static final DELIVERY_MODE_BATCH:I = 0x2

.field private static final DELIVERY_MODE_IMMEDIATE:I = 0x0

.field private static final DELIVERY_MODE_ON_FOUND_LOST:I = 0x1

.field private static final DISCARD_OLDEST_WHEN_BUFFER_FULL:I = 0x0

.field private static final FILTER_LOGIC_TYPE:I = 0x1

.field private static final LIST_LOGIC_TYPE:I = 0x1111111

.field private static final MATCH_MODE_AGGRESSIVE_TIMEOUT_FACTOR:I = 0x1

.field private static final MATCH_MODE_STICKY_TIMEOUT_FACTOR:I = 0x3

.field private static final ONFOUND_SIGHTINGS_AGGRESSIVE:I = 0x1

.field private static final ONFOUND_SIGHTINGS_STICKY:I = 0x4

.field private static final ONLOST_FACTOR:I = 0x2

.field private static final ONLOST_ONFOUND_BASE_TIMEOUT_MS:I = 0x1f4

.field private static final SCAN_MODE_BALANCED_INTERVAL_MS:I = 0x1000

.field private static final SCAN_MODE_BALANCED_WINDOW_MS:I = 0x400

.field private static final SCAN_MODE_BATCH_BALANCED_INTERVAL_MS:I = 0x3a98

.field private static final SCAN_MODE_BATCH_BALANCED_WINDOW_MS:I = 0x5dc

.field private static final SCAN_MODE_BATCH_LOW_LATENCY_INTERVAL_MS:I = 0x1388

.field private static final SCAN_MODE_BATCH_LOW_LATENCY_WINDOW_MS:I = 0x5dc

.field private static final SCAN_MODE_BATCH_LOW_POWER_INTERVAL_MS:I = 0x249f0

.field private static final SCAN_MODE_BATCH_LOW_POWER_WINDOW_MS:I = 0x5dc

.field private static final SCAN_MODE_LOW_LATENCY_INTERVAL_MS:I = 0x1000

.field private static final SCAN_MODE_LOW_LATENCY_WINDOW_MS:I = 0x1000

.field private static final SCAN_MODE_LOW_POWER_INTERVAL_MS:I = 0x1400

.field private static final SCAN_MODE_LOW_POWER_WINDOW_MS:I = 0x200


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mAllPassBatchClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllPassRegularClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchScanIntervalIntent:Landroid/app/PendingIntent;

.field private final mClientFilterIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFilterIndexStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;)V
    .locals 4

    .line 552
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    .line 547
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    .line 553
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    .line 554
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    .line 556
    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    .line 557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 558
    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    .line 559
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    new-instance v1, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;

    invoke-direct {v1, p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative$1;-><init>(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanManager;)V

    invoke-static {p1, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$1602(Lcom/android/bluetooth/gatt/ScanManager;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 578
    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$1600(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/bluetooth/gatt/GattService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 579
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1702(Lcom/android/bluetooth/gatt/ScanManager;Z)Z

    .line 580
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;JJ)V
    .locals 0

    .line 494
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->registerScannerNative(JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;I)V
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->unregisterScannerNative(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isExemptFromScanDowngrade(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;)I
    .locals 0

    .line 494
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;I)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result p0

    return p0
.end method

.method private configureFilterParamter(ILcom/android/bluetooth/gatt/ScanClient;III)V
    .locals 15

    .line 1146
    move-object v0, p0

    move-object/from16 v1, p2

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I

    move-result v9

    .line 1147
    nop

    .line 1148
    iget-object v1, v1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 1149
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getOnFoundOnLostTimeoutMillis(Landroid/bluetooth/le/ScanSettings;Z)I

    move-result v10

    .line 1150
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getOnFoundOnLostTimeoutMillis(Landroid/bluetooth/le/ScanSettings;Z)I

    .line 1151
    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getOnFoundOnLostSightings(Landroid/bluetooth/le/ScanSettings;)I

    move-result v12

    .line 1152
    nop

    .line 1153
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureFilterParamter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p5

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.ScanManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1153
    :cond_0
    move/from16 v13, p5

    .line 1157
    :goto_0
    new-instance v14, Lcom/android/bluetooth/gatt/FilterParams;

    const v5, 0x1111111

    const/4 v6, 0x1

    const/16 v11, 0x2710

    const/16 v8, -0x80

    move-object v1, v14

    move/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, p3

    move v7, v8

    move/from16 v13, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/bluetooth/gatt/FilterParams;-><init>(IIIIIIIIIIII)V

    .line 1161
    invoke-direct {p0, v14}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamAddNative(Lcom/android/bluetooth/gatt/FilterParams;)V

    .line 1162
    return-void
.end method

.method private configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 13

    .line 987
    iget v6, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    .line 988
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I

    move-result v7

    .line 989
    nop

    .line 992
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    return-void

    .line 996
    :cond_0
    invoke-direct {p0, p1, v7}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldAddAllPassFilterToController(Lcom/android/bluetooth/gatt/ScanClient;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 997
    return-void

    .line 1000
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 1001
    const/4 v8, 0x1

    invoke-direct {p0, v6, v8}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterEnableNative(IZ)V

    .line 1002
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 1004
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1006
    const/4 v0, 0x2

    if-ne v7, v0, :cond_2

    move v4, v0

    goto :goto_0

    .line 1007
    :cond_2
    move v4, v8

    .line 1008
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 1010
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureFilterParamter(ILcom/android/bluetooth/gatt/ScanClient;III)V

    .line 1012
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 1013
    goto/16 :goto_4

    .line 1014
    :cond_3
    new-instance v9, Ljava/util/ArrayDeque;

    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    .line 1015
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanFilter;

    .line 1016
    new-instance v2, Lcom/android/bluetooth/gatt/ScanFilterQueue;

    invoke-direct {v2}, Lcom/android/bluetooth/gatt/ScanFilterQueue;-><init>()V

    .line 1017
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->addScanFilter(Landroid/bluetooth/le/ScanFilter;)V

    .line 1018
    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->getFeatureSelection()I

    move-result v3

    .line 1019
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1021
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 1022
    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ScanFilterQueue;->toArray()[Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;

    move-result-object v1

    invoke-direct {p0, v6, v1, v11}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterAddNative(I[Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;I)V

    .line 1023
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 1025
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 1026
    if-ne v7, v8, :cond_5

    .line 1027
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getNumOfTrackingAdvertisements(Landroid/bluetooth/le/ScanSettings;)I

    move-result v0

    .line 1028
    invoke-direct {p0, v0, v8}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->manageAllocationOfTrackingAdvertisement(IZ)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No hardware resources for onfound/onlost filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.ScanManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v6, v4}, Lcom/android/bluetooth/gatt/GattService;->onScanManagerErrorCallback(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    goto :goto_2

    .line 1034
    :catch_0
    move-exception v1

    .line 1035
    const-string v4, "failed on onScanManagerCallback"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1039
    :cond_4
    :goto_2
    move v12, v0

    goto :goto_3

    .line 1026
    :cond_5
    move v12, v0

    .line 1039
    :goto_3
    move-object v0, p0

    move v1, v6

    move-object v2, p1

    move v4, v11

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureFilterParamter(ILcom/android/bluetooth/gatt/ScanClient;III)V

    .line 1041
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 1042
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1043
    move v0, v12

    goto :goto_1

    .line 1044
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    :goto_4
    return-void
.end method

.method private native gattClientConfigBatchScanStorageNative(IIII)V
.end method

.method private native gattClientReadScanReportsNative(II)V
.end method

.method private native gattClientScanFilterAddNative(I[Lcom/android/bluetooth/gatt/ScanFilterQueue$Entry;I)V
.end method

.method private native gattClientScanFilterClearNative(II)V
.end method

.method private native gattClientScanFilterEnableNative(IZ)V
.end method

.method private native gattClientScanFilterParamAddNative(Lcom/android/bluetooth/gatt/FilterParams;)V
.end method

.method private native gattClientScanFilterParamClearAllNative(I)V
.end method

.method private native gattClientScanFilterParamDeleteNative(II)V
.end method

.method private native gattClientScanNative(Z)V
.end method

.method private native gattClientStartBatchScanNative(IIIIII)V
.end method

.method private native gattClientStopBatchScanNative(I)V
.end method

.method private native gattSetScanParametersNative(III)V
.end method

.method private getBatchScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 3

    .line 1096
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 1097
    iget v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    if-ne v2, p1, :cond_0

    .line 1098
    return-object v1

    .line 1100
    :cond_0
    goto :goto_0

    .line 1101
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBatchScanIntervalMillis(I)I
    .locals 1

    .line 822
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 830
    const p1, 0x249f0

    return p1

    .line 824
    :cond_0
    const/16 p1, 0x1388

    return p1

    .line 826
    :cond_1
    const/16 p1, 0x3a98

    return p1
.end method

.method private getBatchScanParams()Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    .locals 5

    .line 791
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    const/4 v0, 0x0

    return-object v0

    .line 794
    :cond_0
    new-instance v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;-><init>(Lcom/android/bluetooth/gatt/ScanManager;)V

    .line 797
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ScanClient;

    .line 798
    iget v3, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    iget-object v4, v2, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    .line 799
    iget-object v3, v2, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v3

    if-nez v3, :cond_1

    .line 800
    iget v2, v2, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    iput v2, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanscannerId:I

    goto :goto_1

    .line 802
    :cond_1
    iget v2, v2, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    iput v2, v0, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanscannerId:I

    .line 804
    :goto_1
    goto :goto_0

    .line 805
    :cond_2
    return-object v0
.end method

.method private getBatchScanWindowMillis(I)I
    .locals 0

    .line 809
    nop

    .line 817
    const/16 p1, 0x5dc

    return p1
.end method

.method private getBatchTriggerIntervalMillis()J
    .locals 8

    .line 973
    nop

    .line 974
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/gatt/ScanClient;

    .line 975
    iget-object v4, v3, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 976
    iget-object v3, v3, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 977
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 979
    :cond_0
    goto :goto_0

    .line 980
    :cond_1
    return-wide v1
.end method

.method private getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I
    .locals 7

    .line 1166
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1167
    return v0

    .line 1169
    :cond_0
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 1170
    if-nez p1, :cond_1

    .line 1171
    return v0

    .line 1173
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v1

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    .line 1174
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1177
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    goto :goto_0

    .line 1178
    :cond_3
    move v0, v2

    .line 1177
    :goto_0
    return v0

    .line 1175
    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private getFullScanStoragePercent(I)I
    .locals 1

    .line 778
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 786
    const/16 p1, 0x32

    return p1

    .line 780
    :cond_0
    const/16 p1, 0x64

    return p1

    .line 782
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getNumOfTrackingAdvertisements(Landroid/bluetooth/le/ScanSettings;)I
    .locals 5

    .line 1273
    if-nez p1, :cond_0

    .line 1274
    const/4 p1, 0x0

    return p1

    .line 1276
    :cond_0
    nop

    .line 1278
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getTotalNumOfTrackableAdvertisements()I

    move-result v0

    .line 1283
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getNumOfMatches()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    .line 1294
    nop

    .line 1295
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid setting for getNumOfMatches() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getNumOfMatches()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1296
    const-string v0, "BtGatt.ScanManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_1
    move v2, v3

    goto :goto_0

    .line 1291
    :cond_2
    div-int/lit8 v2, v0, 0x2

    .line 1292
    goto :goto_0

    .line 1288
    :cond_3
    nop

    .line 1289
    goto :goto_0

    .line 1285
    :cond_4
    nop

    .line 1286
    move v2, v3

    .line 1300
    :goto_0
    return v2
.end method

.method private getOnFoundOnLostSightings(Landroid/bluetooth/le/ScanSettings;)I
    .locals 1

    .line 1262
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1263
    return v0

    .line 1265
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 1266
    return v0

    .line 1268
    :cond_1
    const/4 p1, 0x4

    return p1
.end method

.method private getOnFoundOnLostTimeoutMillis(Landroid/bluetooth/le/ScanSettings;Z)I
    .locals 1

    .line 1248
    nop

    .line 1250
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getMatchMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1251
    goto :goto_0

    .line 1253
    :cond_0
    const/4 v0, 0x3

    .line 1255
    :goto_0
    if-nez p2, :cond_1

    .line 1256
    mul-int/lit8 v0, v0, 0x2

    .line 1258
    :cond_1
    const/16 p1, 0x1f4

    mul-int/2addr p1, v0

    return p1
.end method

.method private getResultType(Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)I
    .locals 2

    .line 1108
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanscannerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanscannerId:I

    if-eq v0, v1, :cond_0

    .line 1109
    const/4 p1, 0x3

    return p1

    .line 1111
    :cond_0
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanscannerId:I

    if-eq v0, v1, :cond_1

    .line 1112
    const/4 p1, 0x1

    return p1

    .line 1114
    :cond_1
    iget p1, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanscannerId:I

    if-eq p1, v1, :cond_2

    .line 1115
    const/4 p1, 0x2

    return p1

    .line 1117
    :cond_2
    return v1
.end method

.method private getScanIntervalMillis(Landroid/bluetooth/le/ScanSettings;)I
    .locals 5

    .line 1215
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1216
    const/16 v1, 0x1400

    const-string v2, "ble_scan_low_power_interval_ms"

    if-nez p1, :cond_0

    .line 1217
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 1222
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    const/16 v4, 0x1000

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 1239
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 1224
    :cond_1
    const-string p1, "ble_scan_low_latency_interval_ms"

    invoke-static {v0, p1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 1229
    :cond_2
    const-string p1, "ble_scan_balanced_interval_ms"

    invoke-static {v0, p1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 1234
    :cond_3
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getScanWindowMillis(Landroid/bluetooth/le/ScanSettings;)I
    .locals 4

    .line 1182
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1183
    const/16 v1, 0x200

    const-string v2, "ble_scan_low_power_window_ms"

    if-nez p1, :cond_0

    .line 1184
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 1190
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 1207
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 1192
    :cond_1
    const/16 p1, 0x1000

    const-string v1, "ble_scan_low_latency_window_ms"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 1197
    :cond_2
    const/16 p1, 0x400

    const-string v1, "ble_scan_balanced_window_ms"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 1202
    :cond_3
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private initFilterIndexStack()V
    .locals 4

    .line 1133
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getNumOfOffloadedScanFilterSupported()I

    move-result v0

    .line 1138
    const/4 v1, 0x3

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1139
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 1138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1141
    :cond_0
    return-void
.end method

.method private isExemptFromScanDowngrade(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 1

    .line 710
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isFirstMatchScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 711
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 710
    :goto_1
    return p1
.end method

.method private isFirstMatchScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 0

    .line 724
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 2

    .line 716
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-eqz v1, :cond_1

    .line 717
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 719
    :cond_1
    return v0
.end method

.method private manageAllocationOfTrackingAdvertisement(IZ)Z
    .locals 4

    .line 1306
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getTotalNumOfTrackableAdvertisements()I

    move-result v0

    .line 1307
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$2100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v1

    monitor-enter v1

    .line 1308
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    .line 1309
    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->access$2100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1310
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 1311
    if-lt v0, p1, :cond_0

    .line 1312
    iget-object p2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$2100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$2102(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1313
    monitor-exit v1

    return v2

    .line 1315
    :cond_0
    monitor-exit v1

    return v3

    .line 1318
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p2}, Lcom/android/bluetooth/gatt/ScanManager;->access$2100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-le p1, p2, :cond_2

    .line 1319
    monitor-exit v1

    return v3

    .line 1321
    :cond_2
    iget-object p2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$2100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$2102(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1322
    monitor-exit v1

    return v2

    .line 1325
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private numRegularScanClients()I
    .locals 4

    .line 688
    nop

    .line 689
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ScanClient;

    .line 690
    iget-object v2, v2, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 691
    add-int/lit8 v1, v1, 0x1

    .line 693
    :cond_0
    goto :goto_0

    .line 694
    :cond_1
    return v1
.end method

.method private native registerScannerNative(JJ)V
.end method

.method private removeFilterIfExisits(Ljava/util/Set;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 1083
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1084
    return-void

    .line 1086
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1088
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1089
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 1090
    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamDeleteNative(II)V

    .line 1091
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 1093
    :cond_1
    return-void
.end method

.method private removeScanFilters(I)V
    .locals 2

    .line 1066
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Deque;

    .line 1067
    if-eqz v0, :cond_0

    .line 1068
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addAll(Ljava/util/Collection;)Z

    .line 1069
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1070
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 1071
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanFilterParamDeleteNative(II)V

    .line 1072
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 1073
    goto :goto_0

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeFilterIfExisits(Ljava/util/Set;II)V

    .line 1078
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeFilterIfExisits(Ljava/util/Set;II)V

    .line 1080
    return-void
.end method

.method private resetBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 8

    .line 729
    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    .line 730
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanParams()Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v7

    .line 732
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$2000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    const-string v2, "BtGatt.ScanManager"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$2000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 733
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const-string v0, "stopping BLe Batch"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 738
    sget-object v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->BLE_BATCH_SCAN_PROPERTY:Ljava/lang/String;

    const-string v3, "false"

    invoke-static {v0, v3}, Lcom/android/bluetooth/gatt/GattServiceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientStopBatchScanNative(I)V

    .line 741
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 744
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->flushBatchResults(I)V

    .line 747
    :cond_1
    if-eqz v7, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$2000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 748
    const/16 v0, 0x5f

    .line 749
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 750
    const-string v3, "Starting BLE batch scan"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_2
    invoke-direct {p0, v7}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getResultType(Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)I

    move-result v3

    .line 753
    invoke-direct {p0, v3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getFullScanStoragePercent(I)I

    move-result v4

    .line 754
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 755
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 756
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configuring batch scan storage, appIf "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_3
    iget p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    rsub-int/lit8 v2, v4, 0x64

    invoke-direct {p0, p1, v4, v2, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientConfigBatchScanStorageNative(IIII)V

    .line 760
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 761
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 762
    iget p1, v7, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    .line 763
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanIntervalMillis(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result p1

    .line 764
    iget v0, v7, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->scanMode:I

    .line 765
    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchScanWindowMillis(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v4

    .line 767
    sget-object v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->BLE_BATCH_SCAN_PROPERTY:Ljava/lang/String;

    const-string v2, "true"

    invoke-static {v0, v2}, Lcom/android/bluetooth/gatt/GattServiceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v3

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientStartBatchScanNative(IIIIII)V

    .line 771
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 773
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1, v7}, Lcom/android/bluetooth/gatt/ScanManager;->access$2002(Lcom/android/bluetooth/gatt/ScanManager;Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    .line 774
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->setBatchAlarm()V

    .line 775
    return-void
.end method

.method private resetCountDownLatch()V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$1802(Lcom/android/bluetooth/gatt/ScanManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 584
    return-void
.end method

.method private setBatchAlarm()V
    .locals 11

    .line 838
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 839
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    return-void

    .line 842
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getBatchTriggerIntervalMillis()J

    move-result-wide v0

    .line 845
    const-wide/16 v2, 0xa

    div-long v8, v0, v2

    .line 846
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long v6, v2, v0

    .line 847
    iget-object v4, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-object v10, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    .line 849
    return-void
.end method

.method private shouldAddAllPassFilterToController(Lcom/android/bluetooth/gatt/ScanClient;I)Z
    .locals 3

    .line 1052
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1053
    return v1

    .line 1056
    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    .line 1057
    iget-object p2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1058
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassBatchClients:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 1060
    :cond_2
    iget-object p2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1061
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAllPassRegularClients:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private shouldUseAllPassFilter(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 2

    .line 1122
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1123
    return v0

    .line 1125
    :cond_0
    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1128
    :cond_1
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    if-le p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1126
    :cond_3
    :goto_1
    return v0
.end method

.method private native unregisterScannerNative(I)V
.end method

.method private waitForCallback()Z
    .locals 4

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 590
    :catch_0
    move-exception v0

    .line 591
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mBatchScanIntervalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 966
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1700(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$1600(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$1702(Lcom/android/bluetooth/gatt/ScanManager;Z)Z

    .line 970
    return-void
.end method

.method configureRegularScanParams()V
    .locals 7

    .line 596
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v0

    const-string v1, "BtGatt.ScanManager"

    if-eqz v0, :cond_0

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureRegularScanParams() - queue="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_0
    nop

    .line 600
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getAggressiveClient(Ljava/util/Set;)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    .line 601
    const/high16 v2, -0x80000000

    if-eqz v0, :cond_1

    .line 602
    iget-object v3, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v3

    goto :goto_0

    .line 601
    :cond_1
    move v3, v2

    .line 605
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configureRegularScanParams() - ScanSetting Scan mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLastConfiguredScanSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    .line 607
    invoke-static {v5}, Lcom/android/bluetooth/gatt/ScanManager;->access$1900(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 606
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_2
    if-eq v3, v2, :cond_6

    const/4 v2, -0x1

    if-eq v3, v2, :cond_6

    .line 612
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->access$1900(Lcom/android/bluetooth/gatt/ScanManager;)I

    move-result v2

    if-eq v3, v2, :cond_7

    .line 613
    iget-object v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getScanWindowMillis(Landroid/bluetooth/le/ScanSettings;)I

    move-result v2

    .line 614
    iget-object v4, v0, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-direct {p0, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getScanIntervalMillis(Landroid/bluetooth/le/ScanSettings;)I

    move-result v4

    .line 616
    invoke-static {v2}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v2

    .line 617
    invoke-static {v4}, Lcom/android/bluetooth/Utils;->millsToUnit(I)I

    move-result v4

    .line 618
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 619
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 620
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configureRegularScanParams - scanInterval = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "configureRegularScanParams - scanWindow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_3
    iget v0, v0, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-direct {p0, v0, v4, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattSetScanParametersNative(III)V

    .line 625
    invoke-static {}, Lcom/android/bluetooth/gatt/GattServiceConfig;->isLeScanDisableByForce()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 626
    const-string v0, "************ DISABLE LE SCAN BY FORCE ************"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ScanClient;

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**************************************************"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 630
    goto :goto_1

    .line 631
    :cond_4
    sget-object v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->BLE_SCAN_COUNT_PROPERTY:Ljava/lang/String;

    .line 632
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/GattServiceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void

    .line 636
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 637
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0, v3}, Lcom/android/bluetooth/gatt/ScanManager;->access$1902(Lcom/android/bluetooth/gatt/ScanManager;I)I

    .line 638
    goto :goto_2

    .line 640
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0, v3}, Lcom/android/bluetooth/gatt/ScanManager;->access$1902(Lcom/android/bluetooth/gatt/ScanManager;I)I

    .line 641
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 642
    const-string v0, "configureRegularScanParams() - queue emtpy, scan stopped"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_7
    :goto_2
    return-void
.end method

.method flushBatchResults(I)V
    .locals 2

    .line 945
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flushPendingBatchResults - scannerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.ScanManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$2000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object p1

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanscannerId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 949
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 950
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$2000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object p1

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->fullScanscannerId:I

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientReadScanReportsNative(II)V

    .line 952
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 954
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$2000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object p1

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanscannerId:I

    if-eq p1, v0, :cond_2

    .line 955
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetCountDownLatch()V

    .line 956
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$2000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    move-result-object p1

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;->truncatedScanscannerId:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientReadScanReportsNative(II)V

    .line 958
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->waitForCallback()Z

    .line 960
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->setBatchAlarm()V

    .line 961
    return-void
.end method

.method getAggressiveClient(Ljava/util/Set;)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;)",
            "Lcom/android/bluetooth/gatt/ScanClient;"
        }
    .end annotation

    .line 648
    nop

    .line 649
    nop

    .line 650
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ScanClient;

    .line 653
    iget-object v3, v2, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 654
    nop

    .line 655
    iget-object v0, v2, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v0

    move v1, v0

    move-object v0, v2

    .line 657
    :cond_0
    goto :goto_0

    .line 658
    :cond_1
    return-object v0
.end method

.method getRegularScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 3

    .line 928
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 929
    iget v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    if-ne v2, p1, :cond_0

    .line 930
    return-object v1

    .line 932
    :cond_0
    goto :goto_0

    .line 933
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method regularScanTimeout(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 3

    .line 889
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isExemptFromScanDowngrade(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    const-string v1, "BtGatt.ScanManager"

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AppScanStats;->isScanningTooLong()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving scan client to opportunistic (scannerId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->setOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 893
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeScanFilters(I)V

    .line 894
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    iget p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/AppScanStats;->setScanTimeout(I)V

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureRegularScanParams()V

    .line 900
    sget-object p1, Lcom/android/bluetooth/gatt/GattServiceConfig;->BLE_SCAN_COUNT_PROPERTY:Ljava/lang/String;

    .line 901
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 900
    invoke-static {p1, v0}, Lcom/android/bluetooth/gatt/GattServiceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {p1}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 906
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 907
    const-string p1, "stop scan"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 911
    :cond_2
    return-void
.end method

.method setOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 4

    .line 916
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 917
    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 918
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 919
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 920
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 921
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 922
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings;->getNumOfMatches()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 923
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    iput-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 924
    return-void
.end method

.method startBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1500(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->initFilterIndexStack()V

    .line 701
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 702
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 705
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 707
    :cond_1
    return-void
.end method

.method startRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 4

    .line 662
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1500(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mFilterIndexStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->mClientFilterIndexMap:Ljava/util/Map;

    .line 663
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->initFilterIndexStack()V

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$1500(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureScanFilters(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 671
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/gatt/GattServiceConfig;->isLeScanDisableByForce()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 672
    const-string p1, "BtGatt.ScanManager"

    const-string v0, "************ DISABLE LE SCAN BY FORCE ************"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 674
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**************************************************"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 677
    goto :goto_0

    .line 679
    :cond_2
    sget-object p1, Lcom/android/bluetooth/gatt/GattServiceConfig;->BLE_SCAN_COUNT_PROPERTY:Ljava/lang/String;

    .line 680
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-static {p1, v0}, Lcom/android/bluetooth/gatt/GattServiceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 683
    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 685
    :cond_3
    return-void
.end method

.method stopBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 938
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeScanFilters(I)V

    .line 939
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->isOpportunisticScanClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 940
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->resetBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 942
    :cond_0
    return-void
.end method

.method stopRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 6

    .line 853
    if-nez p1, :cond_0

    .line 854
    return-void

    .line 856
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getDeliveryMode(Lcom/android/bluetooth/gatt/ScanClient;)I

    move-result v0

    .line 857
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "BtGatt.ScanManager"

    if-ne v0, v1, :cond_2

    .line 858
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanFilter;

    .line 859
    iget-object v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-direct {p0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getNumOfTrackingAdvertisements(Landroid/bluetooth/le/ScanSettings;)I

    move-result v1

    .line 860
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->manageAllocationOfTrackingAdvertisement(IZ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error freeing for onfound/onlost filter resources "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    iget v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Lcom/android/bluetooth/gatt/GattService;->onScanManagerErrorCallback(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    goto :goto_1

    .line 866
    :catch_0
    move-exception v1

    .line 867
    const-string v4, "failed on onScanManagerCallback at freeing"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    :cond_1
    :goto_1
    goto :goto_0

    .line 872
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 874
    sget-object v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->BLE_SCAN_COUNT_PROPERTY:Ljava/lang/String;

    .line 875
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 874
    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/GattServiceConfig;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->numRegularScanClients()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 880
    invoke-static {}, Lcom/android/bluetooth/gatt/ScanManager;->access$600()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 881
    const-string v0, "stop scan"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->gattClientScanNative(Z)V

    .line 885
    :cond_4
    iget p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->removeScanFilters(I)V

    .line 886
    return-void
.end method
