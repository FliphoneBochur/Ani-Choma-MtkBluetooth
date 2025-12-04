.class Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;
.super Ljava/lang/Object;
.source "BluetoothTetheringNetworkFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->startNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 158
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$400(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "BluetoothTetheringNetworkFactory"

    const-string v2, "attempted to reverse tether without interface name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    monitor-exit v0

    return-void

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ipProvisioningThread(+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v3}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$400(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") start IP provisioning"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$500(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$600(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;

    move-result-object v1

    .line 165
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$000(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)I

    move-result v2

    .line 166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 168
    invoke-virtual {v1}, Landroid/net/ip/IpClientUtil$WaitForProvisioningCallbacks;->waitForProvisioning()Landroid/net/LinkProperties;

    move-result-object v9

    .line 169
    if-nez v9, :cond_1

    .line 170
    const-string v0, "BluetoothTetheringNetworkFactory"

    const-string v1, "IP provisioning error."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    monitor-enter v0

    .line 172
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$700(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V

    .line 173
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$800(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V

    .line 174
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->setScoreFilter(I)V

    .line 175
    monitor-exit v0

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 178
    :cond_1
    new-instance v0, Landroid/net/NetworkAgentConfig$Builder;

    invoke-direct {v0}, Landroid/net/NetworkAgentConfig$Builder;-><init>()V

    const/4 v1, 0x7

    .line 179
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyType(I)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v0

    .line 180
    const-string v1, "Bluetooth Tethering"

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgentConfig$Builder;->setLegacyTypeName(Ljava/lang/String;)Landroid/net/NetworkAgentConfig$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/net/NetworkAgentConfig$Builder;->build()Landroid/net/NetworkAgentConfig;

    move-result-object v11

    .line 183
    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    monitor-enter v1

    .line 186
    :try_start_2
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$000(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)I

    move-result v0

    if-eq v2, v0, :cond_2

    monitor-exit v1

    return-void

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    new-instance v2, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1$1;

    iget-object v3, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .line 189
    invoke-static {v3}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$900(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/content/Context;

    move-result-object v5

    iget-object v3, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-virtual {v3}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->getLooper()Landroid/os/Looper;

    move-result-object v6

    const-string v7, "Bluetooth Tethering"

    iget-object v3, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .line 190
    invoke-static {v3}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$1000(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    const/16 v10, 0x45

    iget-object v3, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    .line 191
    invoke-virtual {v3}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->getProvider()Landroid/net/NetworkProvider;

    move-result-object v12

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v12}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1$1;-><init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 188
    invoke-static {v0, v2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$202(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$200(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkAgent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;

    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;->this$0:Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;

    invoke-static {v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->access$200(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkAgent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->markConnected()V

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 166
    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method
