.class Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;
.super Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;
.source "BluetoothTetheringNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BtIpClientCallback"
.end annotation


# instance fields
.field private final mCurrentStartIndex:I

.field final synthetic this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;I)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-direct {p0}, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;-><init>()V

    .line 84
    iput p2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;->mCurrentStartIndex:I

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;ILcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;-><init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;I)V

    return-void
.end method


# virtual methods
.method public onIpClientCreated(Landroid/net/ip/IIpClient;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    monitor-enter v0

    .line 90
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;->mCurrentStartIndex:I

    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$000(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 94
    monitor-exit v0

    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v1, p1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$102(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Landroid/net/ip/IIpClient;)Landroid/net/ip/IIpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    iget-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {p1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$100(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/ip/IIpClient;

    move-result-object p1

    new-instance v1, Landroid/net/shared/ProvisioningConfiguration$Builder;

    invoke-direct {v1}, Landroid/net/shared/ProvisioningConfiguration$Builder;-><init>()V

    .line 99
    invoke-virtual {v1}, Landroid/net/shared/ProvisioningConfiguration$Builder;->withoutMultinetworkPolicyTracker()Landroid/net/shared/ProvisioningConfiguration$Builder;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/net/shared/ProvisioningConfiguration$Builder;->withoutIpReachabilityMonitor()Landroid/net/shared/ProvisioningConfiguration$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/net/shared/ProvisioningConfiguration$Builder;->build()Landroid/net/shared/ProvisioningConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/shared/ProvisioningConfiguration;->toStableParcelable()Landroid/net/ProvisioningConfigurationParcelable;

    move-result-object v1

    .line 98
    invoke-interface {p1, v1}, Landroid/net/ip/IIpClient;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception p1

    .line 103
    :try_start_2
    const-string v1, "BluetoothTetheringNetworkFactory"

    const-string v2, "Error starting IpClient provisioning"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_0
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$200(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkAgent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$200(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkAgent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/NetworkAgent;->sendLinkProperties(Landroid/net/LinkProperties;)V

    .line 114
    :cond_0
    monitor-exit v0

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
