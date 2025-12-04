.class final Lcom/android/bluetooth/btservice/RemoteDevices;
.super Ljava/lang/Object;
.source "RemoteDevices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;,
        Lcom/android/bluetooth/btservice/RemoteDevices$RemoteDevicesHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MAX_DEVICE_QUEUE_SIZE:I = 0xc8

.field private static final MESSAGE_UUID_INTENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothRemoteDevices"

.field private static final UUID_INTENT_DELAY:I = 0x1770

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private static sSdpTracker:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeviceQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mObject:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    nop

    .line 52
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/RemoteDevices;->DBG:Z

    .line 51
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Landroid/os/Looper;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/android/bluetooth/btservice/RemoteDevices$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/RemoteDevices$1;-><init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 117
    sput-object p1, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/android/bluetooth/btservice/RemoteDevices;->sSdpTracker:Ljava/util/ArrayList;

    .line 119
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    .line 120
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDeviceQueue:Ljava/util/Queue;

    .line 121
    new-instance p1, Lcom/android/bluetooth/btservice/RemoteDevices$RemoteDevicesHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$RemoteDevicesHandler;-><init>(Lcom/android/bluetooth/btservice/RemoteDevices;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/btservice/RemoteDevices;Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendUuidIntent(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/RemoteDevices;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0
.end method

.method private static areUuidsEqual([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z
    .locals 6

    .line 489
    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    array-length v1, p0

    .line 490
    :goto_0
    if-nez p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    array-length v2, p1

    .line 491
    :goto_1
    if-eq v1, v2, :cond_2

    .line 492
    return v0

    .line 494
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 495
    move v4, v0

    :goto_2
    if-ge v4, v1, :cond_3

    .line 496
    aget-object v5, p0, v4

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 495
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 498
    :cond_3
    nop

    :goto_3
    if-ge v0, v2, :cond_4

    .line 499
    aget-object p0, p1, v0

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 501
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 1

    .line 886
    sget-boolean v0, Lcom/android/bluetooth/btservice/RemoteDevices;->DBG:Z

    if-eqz v0, :cond_0

    .line 887
    const-string v0, "BluetoothRemoteDevices"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_0
    return-void
.end method

.method private static errorLog(Ljava/lang/String;)V
    .locals 1

    .line 880
    sget-boolean v0, Lcom/android/bluetooth/btservice/RemoteDevices;->DBG:Z

    if-eqz v0, :cond_0

    .line 881
    const-string v0, "BluetoothRemoteDevices"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_0
    return-void
.end method

.method static getBatteryLevelFromAppleBatteryVsc([Ljava/lang/Object;)I
    .locals 8

    .line 792
    array-length v0, p0

    const-string v1, "BluetoothRemoteDevices"

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 793
    const-string p0, "getBatteryLevelFromAppleBatteryVsc() empty arguments"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return v2

    .line 797
    :cond_0
    const/4 v0, 0x0

    aget-object v3, p0, v0

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_8

    .line 798
    aget-object v3, p0, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 803
    array-length v4, p0

    mul-int/lit8 v5, v3, 0x2

    const/4 v6, 0x1

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 804
    const-string p0, "getBatteryLevelFromAppleBatteryVsc() number of arguments does not match"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return v2

    .line 808
    :cond_1
    nop

    .line 809
    nop

    :goto_0
    if-ge v0, v3, :cond_5

    .line 810
    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v5, v4, 0x1

    aget-object v5, p0, v5

    .line 811
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_4

    .line 812
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 817
    if-eq v5, v6, :cond_2

    .line 819
    nop

    .line 809
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_2
    add-int/lit8 v4, v4, 0x2

    aget-object p0, p0, v4

    .line 822
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 823
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    .line 825
    :cond_3
    const-string p0, "getBatteryLevelFromAppleBatteryVsc() error parsing indicator value"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    return v2

    .line 814
    :cond_4
    const-string p0, "getBatteryLevelFromAppleBatteryVsc() error parsing indicator type"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return v2

    .line 809
    :cond_5
    move p0, v2

    .line 830
    :goto_1
    if-ltz p0, :cond_7

    const/16 v0, 0x9

    if-le p0, v0, :cond_6

    goto :goto_2

    .line 831
    :cond_6
    add-int/2addr p0, v6

    mul-int/lit8 v2, p0, 0xa

    .line 830
    :cond_7
    :goto_2
    return v2

    .line 800
    :cond_8
    const-string p0, "getBatteryLevelFromAppleBatteryVsc() error parsing number of arguments"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return v2
.end method

.method static getBatteryLevelFromXEventVsc([Ljava/lang/Object;)I
    .locals 5

    .line 844
    array-length v0, p0

    const-string v1, "BluetoothRemoteDevices"

    const/4 v2, -0x1

    if-nez v0, :cond_0

    .line 845
    const-string p0, "getBatteryLevelFromXEventVsc() empty arguments"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    return v2

    .line 848
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 849
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 850
    const-string p0, "getBatteryLevelFromXEventVsc() error parsing event name"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return v2

    .line 853
    :cond_1
    check-cast v0, Ljava/lang/String;

    .line 854
    const-string v3, "BATTERY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 856
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBatteryLevelFromXEventVsc() skip none BATTERY event: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/btservice/RemoteDevices;->infoLog(Ljava/lang/String;)V

    .line 857
    return v2

    .line 859
    :cond_2
    array-length v0, p0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBatteryLevelFromXEventVsc() wrong battery level event length: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    .line 861
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 860
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return v2

    .line 864
    :cond_3
    const/4 v0, 0x1

    aget-object v3, p0, v0

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_7

    const/4 v3, 0x2

    aget-object v4, p0, v3

    instance-of v4, v4, Ljava/lang/Integer;

    if-nez v4, :cond_4

    goto :goto_1

    .line 868
    :cond_4
    aget-object v4, p0, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 869
    aget-object p0, p0, v3

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 870
    if-ltz v4, :cond_6

    if-le p0, v0, :cond_6

    if-le v4, p0, :cond_5

    goto :goto_0

    .line 876
    :cond_5
    mul-int/lit8 v4, v4, 0x64

    sub-int/2addr p0, v0

    div-int/2addr v4, p0

    return v4

    .line 871
    :cond_6
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBatteryLevelFromXEventVsc() wrong event value, batteryLevel="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", numberOfLevels="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 871
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    return v2

    .line 865
    :cond_7
    :goto_1
    const-string p0, "getBatteryLevelFromXEventVsc() error parsing event values"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return v2
.end method

.method private static infoLog(Ljava/lang/String;)V
    .locals 1

    .line 892
    sget-boolean v0, Lcom/android/bluetooth/btservice/RemoteDevices;->DBG:Z

    if-eqz v0, :cond_0

    .line 893
    const-string v0, "BluetoothRemoteDevices"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    return-void
.end method

.method private sendBatteryLevelChangedBroadcast(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 480
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 482
    const-string p1, "android.bluetooth.device.extra.BATTERY_LEVEL"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 484
    const/high16 p1, 0x1000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 485
    sget-object p1, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method private sendUuidIntent(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)V
    .locals 2

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 387
    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    :goto_0
    const-string v1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 388
    sget-object p2, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p2, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 391
    sget-object p2, Lcom/android/bluetooth/btservice/RemoteDevices;->sSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method

.method private static warnLog(Ljava/lang/String;)V
    .locals 1

    .line 898
    const-string v0, "BluetoothRemoteDevices"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void
.end method


# virtual methods
.method aclStateChangeCallback(I[BI)V
    .locals 4

    .line 625
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 627
    if-nez p1, :cond_0

    .line 628
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aclStateChangeCallback: device is NULL, address="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", newState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 628
    invoke-static {p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 630
    return-void

    .line 632
    :cond_0
    sget-object p2, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p2}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result p2

    .line 634
    const/4 v0, 0x0

    .line 635
    const-string v1, "aclStateChangeCallback: Adapter State: "

    const/16 v2, 0xf

    const/16 v3, 0xc

    if-nez p3, :cond_5

    .line 636
    if-eq p2, v3, :cond_3

    const/16 v3, 0xb

    if-ne p2, v3, :cond_1

    goto :goto_0

    .line 638
    :cond_1
    if-eq p2, v2, :cond_2

    const/16 v2, 0xe

    if-ne p2, v2, :cond_4

    .line 640
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 637
    :cond_3
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 642
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Connected: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 642
    invoke-static {p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    goto :goto_4

    .line 646
    :cond_5
    if-eq p2, v3, :cond_8

    const/16 v3, 0xd

    if-ne p2, v3, :cond_6

    goto :goto_2

    .line 648
    :cond_6
    if-eq p2, v2, :cond_7

    const/16 v2, 0x10

    if-ne p2, v2, :cond_9

    .line 650
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 647
    :cond_8
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    :cond_9
    :goto_3
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-nez v2, :cond_a

    .line 654
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->resetBatteryLevel(Landroid/bluetooth/BluetoothDevice;)V

    .line 656
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Disconnected: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 656
    invoke-static {p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 661
    :goto_4
    const/4 p2, 0x0

    if-nez p3, :cond_b

    .line 662
    const/4 p3, 0x2

    goto :goto_5

    :cond_b
    move p3, p2

    .line 663
    :goto_5
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 664
    const/16 v2, 0x7e

    sget-object v3, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 665
    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    .line 664
    invoke-static {v2, v3, p3, v1}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BII)V

    .line 666
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p3

    .line 667
    if-nez p3, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothClass;->getClassOfDevice()I

    move-result p2

    .line 668
    :goto_6
    const/16 p3, 0xbb

    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 669
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    .line 668
    invoke-static {p3, v2, p2, v1}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BII)V

    .line 671
    if-eqz v0, :cond_d

    .line 672
    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 673
    const/high16 p1, 0x5000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 675
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 676
    sget-object p1, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_7

    .line 678
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "aclStateChangeCallback intent is null. deviceBondState: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 678
    const-string p2, "BluetoothRemoteDevices"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_7
    return-void
.end method

.method addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    monitor-enter v0

    .line 188
    :try_start_0
    new-instance v1, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;-><init>(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 189
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$102(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 190
    invoke-static {v1, p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$202(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B

    .line 191
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object p1

    .line 192
    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 194
    if-nez v2, :cond_2

    .line 195
    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDeviceQueue:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 196
    iget-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDeviceQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    const/16 v2, 0xc8

    if-le p1, v2, :cond_2

    .line 197
    iget-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDeviceQueue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 198
    sget-object v2, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 199
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    monitor-exit v0

    return-object v1

    .line 198
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 203
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from property map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_2
    monitor-exit v0

    return-object v1

    .line 208
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method cleanup()V
    .locals 2

    .line 144
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/RemoteDevices;->reset()V

    .line 146
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method deviceFoundCallback([B)V
    .locals 7

    .line 598
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceFoundCallback: Remote Address is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 601
    if-nez v0, :cond_0

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device Properties is null for Device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 603
    return-void

    .line 606
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 607
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 608
    new-instance p1, Landroid/bluetooth/BluetoothClass;

    .line 609
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$700(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v2

    invoke-direct {p1, v2}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 608
    const-string v2, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 610
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$800(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)S

    move-result p1

    const-string v2, "android.bluetooth.device.extra.RSSI"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 611
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    sget-object p1, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/AdapterService;->getDiscoveringPackages()Ljava/util/ArrayList;

    move-result-object p1

    .line 614
    monitor-enter p1

    .line 615
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/btservice/DiscoveringPackage;

    .line 616
    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/DiscoveringPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    sget-object v3, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.BLUETOOTH"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 618
    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/DiscoveringPackage;->getPermission()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    .line 617
    invoke-virtual {v3, v1, v4}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastMultiplePermissions(Landroid/content/Intent;[Ljava/lang/String;)V

    .line 620
    goto :goto_0

    .line 621
    :cond_1
    monitor-exit p1

    .line 622
    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method devicePropertyChangedCallback([B[I[[B)V
    .locals 10

    .line 508
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 510
    if-nez v0, :cond_0

    .line 511
    const-string v0, "Added new device property"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 513
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object p1

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    .line 518
    :goto_0
    array-length v1, p2

    if-gtz v1, :cond_1

    .line 519
    const-string p1, "No properties to update"

    invoke-static {p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->errorLog(Ljava/lang/String;)V

    .line 520
    return-void

    .line 523
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    array-length v3, p2

    if-ge v2, v3, :cond_e

    .line 524
    aget v3, p2, v2

    .line 525
    aget-object v4, p3, v2

    .line 526
    array-length v5, v4

    if-lez v5, :cond_d

    .line 527
    iget-object v5, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    monitor-enter v5

    .line 528
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Property type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 529
    const/high16 v6, 0x4000000

    const/4 v7, 0x1

    if-eq v3, v7, :cond_a

    const/4 v7, 0x2

    if-eq v3, v7, :cond_9

    const/4 v7, 0x3

    if-eq v3, v7, :cond_7

    const/4 v7, 0x4

    if-eq v3, v7, :cond_5

    const/4 v6, 0x5

    if-eq v3, v6, :cond_4

    const/16 v6, 0xa

    if-eq v3, v6, :cond_3

    const/16 v6, 0xb

    if-eq v3, v6, :cond_2

    goto/16 :goto_2

    .line 587
    :cond_2
    aget-byte v3, v4, v1

    int-to-short v3, v3

    invoke-static {v0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$802(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;S)S

    goto/16 :goto_2

    .line 545
    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$602(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote device alias is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$600(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 547
    goto/16 :goto_2

    .line 583
    :cond_4
    invoke-static {v4}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v3

    iput v3, v0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mDeviceType:I

    .line 584
    goto/16 :goto_2

    .line 553
    :cond_5
    invoke-static {v4}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v3

    .line 554
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$700(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v7

    if-ne v3, v7, :cond_6

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip class update for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 556
    goto/16 :goto_2

    .line 558
    :cond_6
    invoke-static {v4}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$702(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;I)I

    .line 559
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.action.CLASS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 561
    const-string v4, "android.bluetooth.device.extra.CLASS"

    new-instance v7, Landroid/bluetooth/BluetoothClass;

    .line 562
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$700(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 561
    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 563
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 564
    sget-object v4, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v3, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote class is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$700(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 566
    goto/16 :goto_2

    .line 568
    :cond_7
    array-length v3, v4

    div-int/lit8 v3, v3, 0x10

    .line 569
    invoke-static {v4}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 570
    iget-object v4, v0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Lcom/android/bluetooth/btservice/RemoteDevices;->areUuidsEqual([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip uuids update for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 572
    goto/16 :goto_2

    .line 574
    :cond_8
    iput-object v3, v0, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->mUuids:[Landroid/os/ParcelUuid;

    .line 575
    sget-object v3, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_c

    .line 576
    sget-object v3, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/AdapterService;->deviceUuidUpdated(Landroid/bluetooth/BluetoothDevice;)V

    .line 577
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendUuidIntent(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)V

    goto/16 :goto_2

    .line 549
    :cond_9
    invoke-static {v0, v4}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$202(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;[B)[B

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote Address is:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 551
    goto :goto_2

    .line 531
    :cond_a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 532
    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip name update for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 534
    goto :goto_2

    .line 536
    :cond_b
    invoke-static {v0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$502(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;Ljava/lang/String;)Ljava/lang/String;

    .line 537
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 539
    const-string v4, "android.bluetooth.device.extra.NAME"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 541
    sget-object v4, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v3, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Device name is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->access$500(Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 543
    nop

    .line 590
    :cond_c
    :goto_2
    monitor-exit v5

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 523
    :cond_d
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 593
    :cond_e
    return-void
.end method

.method fetchUuids(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 685
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->sSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    return-void

    .line 688
    :cond_0
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->sSdpTracker:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 691
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 692
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 694
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteServicesNative([B)Z

    .line 695
    return-void
.end method

.method getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    .line 179
    if-nez p1, :cond_0

    .line 180
    const/4 p1, 0x0

    return-object p1

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    monitor-exit v0

    return-object p1

    .line 174
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method init()V
    .locals 3

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    const-string v1, "android.bluetooth.headset.action.HF_INDICATORS_VALUE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.bluetooth.headset.intent.category.companyid.85"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.bluetooth.headset.intent.category.companyid.76"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    sget-object v1, Lcom/android/bluetooth/btservice/RemoteDevices;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void
.end method

.method onHeadsetConnectionStateChanged(Landroid/content/Intent;)V
    .locals 3

    .line 709
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 710
    if-nez v0, :cond_0

    .line 711
    const-string p1, "BluetoothRemoteDevices"

    const-string v0, "onHeadsetConnectionStateChanged() remote device is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    return-void

    .line 714
    :cond_0
    const/4 v1, 0x0

    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    .line 717
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->resetBatteryLevel(Landroid/bluetooth/BluetoothDevice;)V

    .line 719
    :cond_1
    return-void
.end method

.method onHfIndicatorValueChanged(Landroid/content/Intent;)V
    .locals 4

    .line 723
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 724
    if-nez v0, :cond_0

    .line 725
    const-string p1, "BluetoothRemoteDevices"

    const-string v0, "onHfIndicatorValueChanged() remote device is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    return-void

    .line 728
    :cond_0
    const-string v1, "android.bluetooth.headset.extra.HF_INDICATORS_IND_ID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 729
    const-string v3, "android.bluetooth.headset.extra.HF_INDICATORS_IND_VALUE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 730
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 731
    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->updateBatteryLevel(Landroid/bluetooth/BluetoothDevice;I)V

    .line 733
    :cond_1
    return-void
.end method

.method onVendorSpecificHeadsetEvent(Landroid/content/Intent;)V
    .locals 6

    .line 741
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 742
    const-string v1, "BluetoothRemoteDevices"

    if-nez v0, :cond_0

    .line 743
    const-string p1, "onVendorSpecificHeadsetEvent() remote device is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    return-void

    .line 746
    :cond_0
    nop

    .line 747
    const-string v2, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 748
    if-nez v2, :cond_1

    .line 749
    const-string p1, "onVendorSpecificHeadsetEvent() command is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void

    .line 752
    :cond_1
    nop

    .line 753
    const-string v3, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_CMD_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 756
    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    .line 757
    const-string p1, "onVendorSpecificHeadsetEvent() only SET command is processed"

    invoke-static {p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 758
    return-void

    .line 760
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 761
    const-string v3, "android.bluetooth.headset.extra.VENDOR_SPECIFIC_HEADSET_EVENT_ARGS"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 762
    if-nez p1, :cond_3

    .line 763
    const-string p1, "onVendorSpecificHeadsetEvent() arguments are null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return-void

    .line 766
    :cond_3
    nop

    .line 767
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0x70550c42

    const/4 v5, 0x1

    if-eq v1, v3, :cond_6

    const v3, 0x7ccae50d

    if-eq v1, v3, :cond_5

    :cond_4
    goto :goto_0

    :cond_5
    const-string v1, "+XEVENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const-string v1, "+IPHONEACCEV"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    goto :goto_1

    :goto_0
    move v1, v4

    :goto_1
    if-eqz v1, :cond_8

    if-eq v1, v5, :cond_7

    move p1, v4

    goto :goto_2

    .line 772
    :cond_7
    invoke-static {p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getBatteryLevelFromAppleBatteryVsc([Ljava/lang/Object;)I

    move-result p1

    goto :goto_2

    .line 769
    :cond_8
    invoke-static {p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getBatteryLevelFromXEventVsc([Ljava/lang/Object;)I

    move-result p1

    .line 770
    nop

    .line 775
    :goto_2
    if-eq p1, v4, :cond_9

    .line 776
    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->updateBatteryLevel(Landroid/bluetooth/BluetoothDevice;I)V

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " battery level to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->infoLog(Ljava/lang/String;)V

    .line 780
    :cond_9
    return-void
.end method

.method reset()V
    .locals 1

    .line 153
    sget-object v0, Lcom/android/bluetooth/btservice/RemoteDevices;->sSdpTracker:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mDeviceQueue:Ljava/util/Queue;

    if-eqz v0, :cond_2

    .line 162
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 164
    :cond_2
    return-void
.end method

.method resetBatteryLevel(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 456
    if-nez p1, :cond_0

    .line 457
    const-string p1, "Device is null"

    invoke-static {p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->warnLog(Ljava/lang/String;)V

    .line 458
    return-void

    .line 460
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 461
    if-nez v0, :cond_1

    .line 462
    return-void

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBatteryLevel()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery level was never set or is already reset, device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 467
    monitor-exit v1

    return-void

    .line 469
    :cond_2
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setBatteryLevel(I)V

    .line 470
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-direct {p0, p1, v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendBatteryLevelChangedBroadcast(Landroid/bluetooth/BluetoothDevice;I)V

    .line 473
    sget-boolean v0, Lcom/android/bluetooth/btservice/RemoteDevices;->DBG:Z

    if-eqz v0, :cond_3

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reset battery level, device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothRemoteDevices"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_3
    return-void

    .line 470
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method setBondingInitiatedLocally([B)V
    .locals 1

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 403
    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object p1

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object p1

    .line 409
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setBondingInitiatedLocally(Z)V

    .line 410
    return-void
.end method

.method updateBatteryLevel(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 420
    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    const/16 v0, 0x64

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 429
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 430
    if-nez v0, :cond_1

    .line 431
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBatteryLevel()I

    move-result v2

    .line 435
    if-ne p2, v2, :cond_2

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Same battery level for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " received "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->debugLog(Ljava/lang/String;)V

    .line 438
    monitor-exit v1

    return-void

    .line 440
    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setBatteryLevel(I)V

    .line 441
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/RemoteDevices;->sendBatteryLevelChangedBroadcast(Landroid/bluetooth/BluetoothDevice;I)V

    .line 444
    sget-boolean v0, Lcom/android/bluetooth/btservice/RemoteDevices;->DBG:Z

    if-eqz v0, :cond_3

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " battery level to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothRemoteDevices"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_3
    return-void

    .line 441
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 422
    :cond_4
    :goto_0
    sget-boolean v0, Lcom/android/bluetooth/btservice/RemoteDevices;->DBG:Z

    if-eqz v0, :cond_6

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameters device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", batteryLevel="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 423
    invoke-static {p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->warnLog(Ljava/lang/String;)V

    .line 427
    :cond_6
    return-void
.end method

.method updateUuids(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 699
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 700
    iget-object p1, p0, Lcom/android/bluetooth/btservice/RemoteDevices;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 701
    return-void
.end method
