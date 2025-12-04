.class public Lcom/android/bluetooth/pan/PanService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "PanService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;,
        Lcom/android/bluetooth/pan/PanService$ConnectState;,
        Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_IFACE_ADDR_START:Ljava/lang/String; = "192.168.44.1"

.field private static final BLUETOOTH_MAX_PAN_CONNECTIONS:I = 0x5

.field private static final BLUETOOTH_PREFIX_LENGTH:I = 0x18

.field private static final CONN_STATE_CONNECTED:I = 0x0

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTED:I = 0x2

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static final DBG:Z

.field private static final MESSAGE_CONNECT:I = 0x1

.field private static final MESSAGE_CONNECT_STATE_CHANGED:I = 0xb

.field private static final MESSAGE_DISCONNECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PanService"

.field private static sPanService:Lcom/android/bluetooth/pan/PanService;


# instance fields
.field private mBluetoothIfaceAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mMaxPanDevices:I

.field private mNapIfaceAddr:Ljava/lang/String;

.field private mNativeAvailable:Z

.field private mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

.field private mPanDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPanIfName:Ljava/lang/String;

.field private mStarted:Z

.field private mTetherOn:Z

.field mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    .line 89
    invoke-static {}, Lcom/android/bluetooth/pan/PanService;->classInitNative()V

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mStarted:Z

    .line 174
    new-instance v0, Lcom/android/bluetooth/pan/PanService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pan/PanService$1;-><init>(Lcom/android/bluetooth/pan/PanService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pan/PanService;[BII)Z
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/pan/PanService;->connectPanNative([BII)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/pan/PanService;[B)Z
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/pan/PanService;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/pan/PanService;[B)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    return v0
.end method

.method static synthetic access$700(I)I
    .locals 0

    .line 60
    invoke-static {p0}, Lcom/android/bluetooth/pan/PanService;->convertHalState(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/pan/PanService;)Z
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/pan/PanService;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    return p0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private configureBtIface(ZLjava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configureBtIface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 673
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 674
    nop

    .line 675
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/pan/PanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 676
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    .line 679
    nop

    .line 681
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 685
    nop

    .line 687
    nop

    .line 688
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    .line 689
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 690
    nop

    .line 691
    const/4 v6, 0x1

    goto :goto_1

    .line 688
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 695
    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 696
    return-object v3

    .line 699
    :cond_2
    nop

    .line 700
    nop

    .line 702
    :try_start_1
    invoke-interface {v0, p2}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    .line 703
    if-eqz v4, :cond_8

    .line 704
    nop

    .line 705
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v5

    .line 706
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v6, "0.0.0.0"

    .line 707
    invoke-static {v6}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 706
    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "::0"

    .line 708
    invoke-static {v6}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 707
    invoke-virtual {v5, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v6, v3

    goto :goto_3

    .line 709
    :cond_4
    :goto_2
    const-string v5, "192.168.44.1"

    .line 710
    invoke-static {v5}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    .line 713
    :goto_3
    new-instance v7, Landroid/net/LinkAddress;

    const/16 v8, 0x18

    invoke-direct {v7, v5, v8}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v7}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 714
    if-eqz p1, :cond_5

    .line 715
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    goto :goto_4

    .line 717
    :cond_5
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 719
    :goto_4
    invoke-interface {v0, p2, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 723
    const-wide/16 v4, 0x64

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 727
    goto :goto_5

    .line 724
    :catch_0
    move-exception v0

    .line 725
    :try_start_3
    const-string v0, "connectEnabledProfiles thread was interrupted"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 730
    :goto_5
    if-eqz p1, :cond_7

    .line 731
    invoke-virtual {v2, p2}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result p1

    .line 732
    if-eqz p1, :cond_6

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error tethering "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tetherStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-object v3

    .line 736
    :cond_6
    goto :goto_6

    .line 737
    :cond_7
    invoke-virtual {v2, p2}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result p1

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untethered: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " untetherStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 744
    :goto_6
    move-object v3, v6

    :cond_8
    nop

    .line 745
    return-object v3

    .line 741
    :catch_1
    move-exception p1

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error configuring interface "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", :"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    return-object v3

    .line 682
    :catch_2
    move-exception p1

    .line 683
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error listing Interfaces :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-object v3
.end method

.method private native connectPanNative([BII)Z
.end method

.method private static convertHalState(I)I
    .locals 3

    .line 539
    const/4 v0, 0x2

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad pan connection state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PanService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return v1

    .line 547
    :cond_0
    return v0

    .line 545
    :cond_1
    return v1

    .line 543
    :cond_2
    return v1

    .line 541
    :cond_3
    return v0
.end method

.method private native disconnectPanNative([B)Z
.end method

.method private native enablePanNative(I)Z
.end method

.method private getConnectedPanDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 751
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 752
    invoke-direct {p0, v2}, Lcom/android/bluetooth/pan/PanService;->getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 753
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    :cond_0
    goto :goto_0

    .line 756
    :cond_1
    return-object v0
.end method

.method private getPanDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .line 761
    if-nez p1, :cond_0

    .line 762
    const/4 p1, 0x0

    return p1

    .line 764
    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$1000(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result p1

    return p1
.end method

.method private native getPanLocalRoleNative()I
.end method

.method public static declared-synchronized getPanService()Lcom/android/bluetooth/pan/PanService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/pan/PanService;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/pan/PanService;->sPanService:Lcom/android/bluetooth/pan/PanService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 99
    const-string v1, "PanService"

    const-string v3, "getPanService(): service is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v0

    return-object v2

    .line 102
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/pan/PanService;->sPanService:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v1}, Lcom/android/bluetooth/pan/PanService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    const-string v1, "PanService"

    const-string v3, "getPanService(): service is not available "

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    monitor-exit v0

    return-object v2

    .line 106
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/pan/PanService;->sPanService:Lcom/android/bluetooth/pan/PanService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native initializeNative()V
.end method

.method private onConnectStateChanged([BIIII)V
    .locals 8

    .line 519
    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", local role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remoteRole: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 524
    new-instance v7, Lcom/android/bluetooth/pan/PanService$ConnectState;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/pan/PanService$ConnectState;-><init>([BIIII)V

    iput-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 525
    iget-object p1, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    return-void
.end method

.method private onControlStateChanged(IIILjava/lang/String;)V
    .locals 1

    .line 529
    sget-boolean p1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz p1, :cond_0

    .line 530
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onControlStateChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", ifname: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PanService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    if-nez p3, :cond_1

    .line 534
    iput-object p4, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    .line 536
    :cond_1
    return-void
.end method

.method private static declared-synchronized setPanService(Lcom/android/bluetooth/pan/PanService;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/pan/PanService;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "PanService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPanService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    sput-object p0, Lcom/android/bluetooth/pan/PanService;->sPanService:Lcom/android/bluetooth/pan/PanService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit v0

    return-void

    .line 109
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private startTethering(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 662
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pan/PanService;->configureBtIface(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private stopTethering(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 666
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/pan/PanService;->configureBtIface(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected cleanup()V
    .locals 8

    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService;->setPanService(Lcom/android/bluetooth/pan/PanService;)V

    .line 147
    iget-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->mNativeAvailable:Z

    if-eqz v1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->cleanupNative()V

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->mNativeAvailable:Z

    .line 152
    :cond_0
    iput-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mUserManager:Landroid/os/UserManager;

    .line 154
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 157
    nop

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/PanService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 160
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .line 161
    sget-boolean v2, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v2, :cond_1

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "panDevice: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " device address: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "PanService"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_1
    if-eqz v1, :cond_2

    .line 165
    iget-object v4, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    const/4 v5, 0x0

    .line 167
    invoke-static {v1}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$000(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v6

    invoke-static {v1}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$100(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v7

    .line 165
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/pan/PanService;->handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V

    .line 169
    :cond_2
    goto :goto_0

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 172
    :cond_4
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 350
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PanService"

    if-eqz v0, :cond_0

    .line 352
    const-string p1, "Guest user does not have the permission to change the WiFi network"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return v1

    .line 355
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pan Device not disconnected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v1

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 360
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 361
    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 365
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 367
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    const/4 p1, 0x1

    return p1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 769
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMaxPanDevices: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPanIfName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanIfName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTetherOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 773
    const-string v0, "mPanDevices:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

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

    .line 775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/pan/PanService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 776
    goto :goto_0

    .line 777
    :cond_0
    return-void
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 476
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 479
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/PanService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    .line 480
    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 470
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    .line 472
    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 471
    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 372
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .line 375
    if-nez p1, :cond_0

    .line 376
    const/4 p1, 0x0

    return p1

    .line 378
    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$1000(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

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

    .line 484
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    iget-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 488
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 489
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, p1, v5

    .line 490
    if-ne v6, v3, :cond_0

    .line 491
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    goto :goto_2

    .line 489
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 495
    :cond_1
    :goto_2
    goto :goto_0

    .line 496
    :cond_2
    return-object v0
.end method

.method handlePanDeviceStateChange(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;III)V
    .locals 9

    .line 556
    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    const-string v1, "PanService"

    if-eqz v0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePanDeviceStateChange: device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", iface: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", localRole:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remoteRole:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :cond_0
    if-nez p1, :cond_1

    .line 564
    const-string p1, "device is null!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    .line 569
    if-nez v0, :cond_2

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Num of connected pan devices: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v0, 0x0

    .line 572
    new-instance v8, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;

    move-object v2, v8

    move-object v3, p0

    move v4, p3

    move-object v5, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;-><init>(Lcom/android/bluetooth/pan/PanService;ILjava/lang/String;II)V

    .line 573
    iget-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 575
    :cond_2
    invoke-static {v0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$1000(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;)I

    move-result v2

    .line 576
    invoke-static {v0, p3}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$1002(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I

    .line 577
    invoke-static {v0, p4}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$002(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I

    .line 578
    invoke-static {v0, p5}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$102(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;I)I

    .line 579
    invoke-static {v0, p2}, Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;->access$1102(Lcom/android/bluetooth/pan/PanService$BluetoothPanDevice;Ljava/lang/String;)Ljava/lang/String;

    move v0, v2

    .line 587
    :goto_0
    if-nez v0, :cond_3

    const/4 v2, 0x3

    if-ne p3, v2, :cond_3

    .line 589
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Ignoring state change from "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " to "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object p2, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    return-void

    .line 594
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePanDeviceStateChange preState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    if-ne v0, p3, :cond_4

    .line 596
    return-void

    .line 598
    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p5, v3, :cond_8

    .line 599
    if-ne p3, v3, :cond_7

    .line 600
    iget-boolean p5, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    if-eqz p5, :cond_6

    if-ne p4, v3, :cond_5

    goto :goto_1

    .line 607
    :cond_5
    const-string p5, "handlePanDeviceStateChange LOCAL_NAP_ROLE:REMOTE_PANU_ROLE"

    invoke-static {v1, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object p5, p0, Lcom/android/bluetooth/pan/PanService;->mNapIfaceAddr:Ljava/lang/String;

    if-nez p5, :cond_b

    .line 609
    invoke-direct {p0, p2}, Lcom/android/bluetooth/pan/PanService;->startTethering(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/bluetooth/pan/PanService;->mNapIfaceAddr:Ljava/lang/String;

    .line 610
    if-nez p2, :cond_b

    .line 611
    const-string p2, "Error seting up tether interface"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object p2, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z

    .line 614
    return-void

    .line 601
    :cond_6
    :goto_1
    const-string p2, "handlePanDeviceStateChange BT tethering is off/Local role is PANU drop the connection"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object p2, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pan/PanService;->disconnectPanNative([B)Z

    .line 605
    return-void

    .line 617
    :cond_7
    if-nez p3, :cond_b

    .line 618
    iget-object p5, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remote(PANU) is disconnected, Remaining connected PANU devices: "

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    .line 620
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 619
    invoke-static {v1, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object p5, p0, Lcom/android/bluetooth/pan/PanService;->mNapIfaceAddr:Ljava/lang/String;

    if-eqz p5, :cond_b

    iget-object p5, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {p5}, Ljava/util/HashMap;->size()I

    move-result p5

    if-nez p5, :cond_b

    .line 622
    invoke-direct {p0, p2}, Lcom/android/bluetooth/pan/PanService;->stopTethering(Ljava/lang/String;)Ljava/lang/String;

    .line 623
    iput-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mNapIfaceAddr:Ljava/lang/String;

    goto :goto_2

    .line 626
    :cond_8
    iget-boolean p5, p0, Lcom/android/bluetooth/pan/PanService;->mStarted:Z

    if-eqz p5, :cond_b

    .line 629
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePanDeviceStateChange LOCAL_PANU_ROLE:REMOTE_NAP_ROLE state = "

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", prevState = "

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    if-ne p3, v3, :cond_9

    .line 632
    new-instance p5, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .line 633
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {p5, v2, v4, p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/bluetooth/pan/PanService;)V

    iput-object p5, p0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .line 634
    invoke-virtual {p5, p2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->startReverseTether(Ljava/lang/String;)V

    goto :goto_2

    .line 635
    :cond_9
    if-nez p3, :cond_b

    .line 636
    iget-object p2, p0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    if-eqz p2, :cond_a

    .line 637
    invoke-virtual {p2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->stopReverseTether()V

    .line 638
    iput-object v2, p0, Lcom/android/bluetooth/pan/PanService;->mNetworkFactory:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .line 640
    :cond_a
    iget-object p2, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_b
    :goto_2
    if-ne p3, v3, :cond_c

    .line 645
    sget-object p2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PAN:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {p2}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 650
    :cond_c
    sget-boolean p2, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz p2, :cond_d

    .line 651
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Pan Device state : device: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, " State:"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "->"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_d
    new-instance p2, Landroid/content/Intent;

    const-string p5, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p2, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 654
    const-string p5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 655
    const-string p1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    const-string p1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    const-string p1, "android.bluetooth.pan.extra.LOCAL_ROLE"

    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 658
    const-string p1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, p2, p1}, Lcom/android/bluetooth/pan/PanService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 94
    new-instance v0, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pan/PanService$BluetoothPanBinder;-><init>(Lcom/android/bluetooth/pan/PanService;)V

    return-object v0
.end method

.method isPanNapOn()Z
    .locals 2

    .line 382
    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "PanService"

    const-string v1, "isTetheringOn call getPanLocalRoleNative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->getPanLocalRoleNative()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isPanUOn()Z
    .locals 2

    .line 389
    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "PanService"

    const-string v1, "isTetheringOn call getPanLocalRoleNative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->getPanLocalRoleNative()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTetheringOn()Z
    .locals 2

    .line 397
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    return v0
.end method

.method setBluetoothTethering(ZLjava/lang/String;)V
    .locals 1

    .line 402
    sget-boolean p2, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz p2, :cond_0

    .line 403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBluetoothTethering: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mTetherOn: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PanService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    const-string p2, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v0, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, p2, v0}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string p2, "android.permission.TETHER_PRIVILEGED"

    const-string v0, "Need TETHER_PRIVILEGED permission"

    invoke-virtual {p0, p2, v0}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string p2, "user"

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/pan/PanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    .line 411
    const-string v0, "no_config_tethering"

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 412
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "DISALLOW_CONFIG_TETHERING is enabled for this user."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    :cond_2
    :goto_0
    iget-boolean p2, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    if-eq p2, p1, :cond_3

    .line 416
    iput-boolean p1, p0, Lcom/android/bluetooth/pan/PanService;->mTetherOn:Z

    .line 417
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 418
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 419
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 420
    goto :goto_1

    .line 422
    :cond_3
    return-void
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 440
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pan/PanService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-boolean v0, Lcom/android/bluetooth/pan/PanService;->DBG:Z

    if-eqz v0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saved connectionPolicy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PanService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x5

    .line 447
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    .line 448
    if-eqz v0, :cond_1

    const/16 v1, 0x64

    if-ne p2, v1, :cond_1

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 450
    :cond_1
    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 454
    :cond_2
    :goto_0
    return v0
.end method

.method protected start()Z
    .locals 2

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mPanDevices:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mBluetoothIfaceAddresses:Ljava/util/ArrayList;

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/PanService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/bluetooth/pan/PanService;->mMaxPanDevices:I

    .line 126
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/PanService;->initializeNative()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mNativeAvailable:Z

    .line 129
    const-string v1, "user"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pan/PanService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/bluetooth/pan/PanService;->mUserManager:Landroid/os/UserManager;

    .line 131
    invoke-static {p0}, Lcom/android/bluetooth/pan/PanService;->setPanService(Lcom/android/bluetooth/pan/PanService;)V

    .line 132
    iput-boolean v0, p0, Lcom/android/bluetooth/pan/PanService;->mStarted:Z

    .line 134
    return v0
.end method

.method protected stop()Z
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/bluetooth/pan/PanService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 140
    const/4 v0, 0x1

    return v0
.end method
