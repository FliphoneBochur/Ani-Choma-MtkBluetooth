.class public Lcom/android/bluetooth/hid/HidHostService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HidHostService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;
    }
.end annotation


# static fields
.field private static final CONN_STATE_CONNECTED:I = 0x0

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTED:I = 0x2

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static final DBG:Z

.field private static final MESSAGE_CONNECT:I = 0x1

.field private static final MESSAGE_CONNECT_STATE_CHANGED:I = 0x3

.field private static final MESSAGE_DISCONNECT:I = 0x2

.field private static final MESSAGE_GET_IDLE_TIME:I = 0xe

.field private static final MESSAGE_GET_PROTOCOL_MODE:I = 0x4

.field private static final MESSAGE_GET_REPORT:I = 0x8

.field private static final MESSAGE_ON_GET_IDLE_TIME:I = 0xf

.field private static final MESSAGE_ON_GET_PROTOCOL_MODE:I = 0x6

.field private static final MESSAGE_ON_GET_REPORT:I = 0x9

.field private static final MESSAGE_ON_HANDSHAKE:I = 0xd

.field private static final MESSAGE_ON_VIRTUAL_UNPLUG:I = 0xc

.field private static final MESSAGE_SEND_DATA:I = 0xb

.field private static final MESSAGE_SET_IDLE_TIME:I = 0x10

.field private static final MESSAGE_SET_PROTOCOL_MODE:I = 0x7

.field private static final MESSAGE_SET_REPORT:I = 0xa

.field private static final MESSAGE_VIRTUAL_UNPLUG:I = 0x5

.field private static final TAG:Ljava/lang/String; = "BluetoothHidHostService"

.field private static sHidHostService:Lcom/android/bluetooth/hid/HidHostService;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInputDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeAvailable:Z

.field private mTargetDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    nop

    .line 59
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    .line 86
    invoke-static {}, Lcom/android/bluetooth/hid/HidHostService;->classInitNative()V

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 151
    new-instance v0, Lcom/android/bluetooth/hid/HidHostService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidHostService$1;-><init>(Lcom/android/bluetooth/hid/HidHostService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Lcom/android/bluetooth/hid/HidHostService;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/bluetooth/hid/HidHostService;->sHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/hid/HidHostService;[B)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->virtualUnPlugNative([B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/hid/HidHostService;[B)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getProtocolModeNative([B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/hid/HidHostService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->broadcastProtocolMode(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/hid/HidHostService;[BB)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->setProtocolModeNative([BB)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/hid/HidHostService;[BBBI)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/hid/HidHostService;->getReportNative([BBBI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/hid/HidHostService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidHostService;->broadcastReport(Landroid/bluetooth/BluetoothDevice;[BI)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/hid/HidHostService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->broadcastHandshake(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hid/HidHostService;)Z
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidHostService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/hid/HidHostService;[BBLjava/lang/String;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidHostService;->setReportNative([BBLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/hid/HidHostService;[BLjava/lang/String;)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->sendDataNative([BLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/hid/HidHostService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->broadcastVirtualUnplugStatus(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/hid/HidHostService;[B)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getIdleTimeNative([B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/hid/HidHostService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->broadcastIdleTime(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/bluetooth/hid/HidHostService;[BB)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->setIdleTimeNative([BB)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/android/bluetooth/hid/HidHostService;)Z
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidHostService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/hid/HidHostService;[B)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->connectHidNative([B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hid/HidHostService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/hid/HidHostService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidHostService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/hid/HidHostService;[B)Z
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->disconnectHidNative([B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/hid/HidHostService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/hid/HidHostService;)Ljava/util/Map;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$900(I)I
    .locals 0

    .line 56
    invoke-static {p0}, Lcom/android/bluetooth/hid/HidHostService;->convertHalState(I)I

    move-result p0

    return p0
.end method

.method private broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4

    .line 807
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 808
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 809
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 810
    :goto_0
    const-string v1, "BluetoothHidHostService"

    if-ne v0, p2, :cond_1

    .line 811
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no state change: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return-void

    .line 814
    :cond_1
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 815
    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HID_HOST:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 817
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    sget-boolean v2, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 824
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 826
    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 827
    const/high16 p1, 0x4000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 828
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method private broadcastHandshake(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 832
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.input.profile.action.HANDSHAKE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 834
    const-string p1, "android.bluetooth.BluetoothHidHost.extra.STATUS"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 836
    const-string p1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method private broadcastIdleTime(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 868
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.input.profile.action.IDLE_TIME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 870
    const-string v1, "android.bluetooth.BluetoothHidHost.extra.IDLE_TIME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 871
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 872
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidHostService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 873
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Idle time ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothHidHostService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_0
    return-void
.end method

.method private broadcastProtocolMode(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 840
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.input.profile.action.PROTOCOL_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 842
    const-string v1, "android.bluetooth.BluetoothHidHost.extra.PROTOCOL_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 843
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 844
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidHostService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 845
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Protocol Mode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothHidHostService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_0
    return-void
.end method

.method private broadcastReport(Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 2

    .line 851
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.input.profile.action.REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 852
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 853
    const-string p1, "android.bluetooth.BluetoothHidHost.extra.REPORT"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 854
    const-string p1, "android.bluetooth.BluetoothHidHost.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 855
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 856
    const-string p1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method private broadcastVirtualUnplugStatus(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 860
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.input.profile.action.VIRTUAL_UNPLUG_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 861
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 862
    const-string p1, "android.bluetooth.BluetoothHidHost.extra.VIRTUAL_UNPLUG_STATUS"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 863
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 864
    const-string p1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectHidNative([B)Z
.end method

.method private static convertHalState(I)I
    .locals 3

    .line 954
    const/4 v0, 0x2

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad hid connection state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothHidHostService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    return v1

    .line 962
    :cond_0
    return v0

    .line 960
    :cond_1
    return v1

    .line 958
    :cond_2
    return v1

    .line 956
    :cond_3
    return v0
.end method

.method private native disconnectHidNative([B)Z
.end method

.method public static declared-synchronized getHidHostService()Lcom/android/bluetooth/hid/HidHostService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/hid/HidHostService;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hid/HidHostService;->sHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 134
    const-string v1, "BluetoothHidHostService"

    const-string v3, "getHidHostService(): service is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit v0

    return-object v2

    .line 137
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/hid/HidHostService;->sHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    invoke-virtual {v1}, Lcom/android/bluetooth/hid/HidHostService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    const-string v1, "BluetoothHidHostService"

    const-string v3, "getHidHostService(): service is not available "

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    monitor-exit v0

    return-object v2

    .line 141
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/hid/HidHostService;->sHidHostService:Lcom/android/bluetooth/hid/HidHostService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native getIdleTimeNative([B)Z
.end method

.method private native getProtocolModeNative([B)Z
.end method

.method private native getReportNative([BBBI)Z
.end method

.method private native initializeNative()V
.end method

.method private onConnectStateChanged([BI)V
    .locals 2

    .line 798
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 800
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 801
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 802
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 803
    return-void
.end method

.method private onGetIdleTime([BI)V
    .locals 2

    .line 763
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidHostService"

    const-string v1, "onGetIdleTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 765
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 766
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 767
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 768
    return-void
.end method

.method private onGetProtocolMode([BI)V
    .locals 2

    .line 755
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidHostService"

    const-string v1, "onGetProtocolMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 757
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 758
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 759
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 760
    return-void
.end method

.method private onGetReport([B[BI)V
    .locals 2

    .line 771
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidHostService"

    const-string v1, "onGetReport()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 773
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 774
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 775
    const-string v1, "android.bluetooth.BluetoothHidHost.extra.REPORT"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 776
    const-string p2, "android.bluetooth.BluetoothHidHost.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 777
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 778
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 779
    return-void
.end method

.method private onHandshake([BI)V
    .locals 2

    .line 782
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandshake: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 784
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 785
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 786
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 787
    return-void
.end method

.method private onVirtualUnplug([BI)V
    .locals 2

    .line 790
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVirtualUnplug: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 792
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 793
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 794
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 795
    return-void
.end method

.method private native sendDataNative([BLjava/lang/String;)Z
.end method

.method private static declared-synchronized setHidHostService(Lcom/android/bluetooth/hid/HidHostService;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/hid/HidHostService;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v1, :cond_0

    .line 146
    const-string v1, "BluetoothHidHostService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHidHostService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    sput-object p0, Lcom/android/bluetooth/hid/HidHostService;->sHidHostService:Lcom/android/bluetooth/hid/HidHostService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit v0

    return-void

    .line 144
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private native setIdleTimeNative([BB)Z
.end method

.method private native setProtocolModeNative([BB)Z
.end method

.method private native setReportNative([BBLjava/lang/String;)Z
.end method

.method private native virtualUnPlugNative([B)Z
.end method


# virtual methods
.method protected cleanup()V
    .locals 4

    .line 113
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidHostService"

    const-string v1, "Stopping Bluetooth HidHostService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mNativeAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService;->cleanupNative()V

    .line 116
    iput-boolean v1, p0, Lcom/android/bluetooth/hid/HidHostService;->mNativeAvailable:Z

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 120
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 121
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 122
    if-eqz v3, :cond_2

    .line 123
    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/hid/HidHostService;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    .line 125
    :cond_2
    goto :goto_0

    .line 126
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 129
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidHostService;->setHidHostService(Lcom/android/bluetooth/hid/HidHostService;)V

    .line 130
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 521
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    const-string v1, "BluetoothHidHostService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x0

    const-string v3, ""

    if-eqz v0, :cond_2

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hid Device not disconnected: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return v2

    .line 526
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-nez v0, :cond_4

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hid Device CONNECTION_POLICY_FORBIDDEN: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return v2

    .line 531
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 532
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 533
    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 543
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 545
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 546
    const/4 p1, 0x1

    return p1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 971
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTargetDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hid/HidHostService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/hid/HidHostService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 973
    const-string v0, "mInputDevices:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/hid/HidHostService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/hid/HidHostService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 976
    goto :goto_0

    .line 977
    :cond_0
    return-void
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 627
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x4

    .line 631
    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 630
    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 559
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 561
    const/4 p1, 0x0

    return p1

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 567
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothHidHostService"

    const-string v1, "getDevicesMatchingConnectionStates()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 570
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 571
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 572
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p1, v5

    .line 573
    if-ne v6, v3, :cond_1

    .line 574
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    goto :goto_2

    .line 572
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 578
    :cond_2
    :goto_2
    goto :goto_0

    .line 579
    :cond_3
    return-object v0
.end method

.method getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 729
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIdleTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 731
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 732
    const/4 p1, 0x0

    return p1

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 735
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 736
    const/4 p1, 0x1

    return p1
.end method

.method getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 636
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProtocolMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 640
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 641
    const/4 p1, 0x0

    return p1

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 644
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 645
    const/4 p1, 0x1

    return p1
.end method

.method getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .locals 2

    .line 679
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getReport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 683
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 684
    const/4 p1, 0x0

    return p1

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 687
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 688
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 689
    const-string v1, "android.bluetooth.BluetoothHidHost.extra.REPORT_TYPE"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 690
    const-string p2, "android.bluetooth.BluetoothHidHost.extra.REPORT_ID"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 691
    const-string p2, "android.bluetooth.BluetoothHidHost.extra.REPORT_BUFFER_SIZE"

    invoke-virtual {p1, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 692
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 693
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    const/4 p1, 0x1

    return p1
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 91
    new-instance v0, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;-><init>(Lcom/android/bluetooth/hid/HidHostService;)V

    return-object v0
.end method

.method public justDisconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 926
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 928
    const/4 v1, 0x0

    const-string v2, "BluetoothHidHostService"

    if-nez v0, :cond_0

    .line 929
    const-string p1, "justDisconnect: adapter service is null"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return v1

    .line 933
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/hid/HidHostService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_1

    .line 934
    const-string p1, "justDisconnect: return false as quiet mode enabled"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    return v1

    .line 937
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 938
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 940
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    if-nez v3, :cond_2

    .line 942
    const/4 p1, 0x1

    return p1

    .line 945
    :cond_2
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_3

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "justDisconnect: bond="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";policy="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_3
    return v1
.end method

.method public okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 887
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 889
    const/4 v1, 0x0

    const-string v2, "BluetoothHidHostService"

    if-nez v0, :cond_0

    .line 890
    const-string p1, "okToConnect: adapter service is null"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return v1

    .line 894
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/hid/HidHostService;->mTargetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v3, :cond_1

    .line 895
    const-string p1, "okToConnect: return false as quiet mode enabled"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return v1

    .line 899
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 900
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 904
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okToConnect: return false, bondState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return v1

    .line 907
    :cond_2
    const/4 p1, -0x1

    if-eq v3, p1, :cond_3

    const/16 p1, 0x64

    if-eq v3, p1, :cond_3

    .line 910
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "okToConnect: return false, connectionPolicy="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return v1

    .line 913
    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 2

    .line 717
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 721
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 722
    const/4 p1, 0x0

    return p1

    .line 725
    :cond_1
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->sendDataNative([BLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    .line 598
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    const-string v1, "BluetoothHidHostService"

    if-eqz v0, :cond_0

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionPolicy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/4 v2, 0x4

    .line 602
    invoke-virtual {v0, p1, v2, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 603
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_1

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved connectionPolicy "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_1
    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    .line 607
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 608
    :cond_2
    if-nez p2, :cond_3

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 611
    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 2

    .line 740
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIdleTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 742
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 743
    const/4 p1, 0x0

    return p1

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 746
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 747
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 748
    const-string v1, "android.bluetooth.BluetoothHidHost.extra.IDLE_TIME"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 749
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 750
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 751
    const/4 p1, 0x1

    return p1
.end method

.method setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 664
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProtocolMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 668
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 669
    const/4 p1, 0x0

    return p1

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 672
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 673
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 674
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 675
    const/4 p1, 0x1

    return p1
.end method

.method setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .locals 2

    .line 698
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 702
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 703
    const/4 p1, 0x0

    return p1

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 706
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 707
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 708
    const-string v1, "android.bluetooth.BluetoothHidHost.extra.REPORT_TYPE"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 709
    const-string p2, "android.bluetooth.BluetoothHidHost.extra.REPORT"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 711
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 712
    const/4 p1, 0x1

    return p1
.end method

.method protected start()Z
    .locals 1

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mInputDevices:Ljava/util/Map;

    .line 97
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService;->initializeNative()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mNativeAvailable:Z

    .line 99
    invoke-static {p0}, Lcom/android/bluetooth/hid/HidHostService;->setHidHostService(Lcom/android/bluetooth/hid/HidHostService;)V

    .line 100
    return v0
.end method

.method protected stop()Z
    .locals 2

    .line 105
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "BluetoothHidHostService"

    const-string v1, "Stopping Bluetooth HidHostService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 651
    sget-boolean v0, Lcom/android/bluetooth/hid/HidHostService;->DBG:Z

    if-eqz v0, :cond_0

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "virtualUnplug: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothHidHostService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 655
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 656
    const/4 p1, 0x0

    return p1

    .line 658
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 659
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 660
    const/4 p1, 0x1

    return p1
.end method
