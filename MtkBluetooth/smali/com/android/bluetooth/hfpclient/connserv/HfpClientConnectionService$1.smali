.class Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;
.super Landroid/content/BroadcastReceiver;
.source "HfpClientConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HfpClientConnService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 69
    :goto_0
    const-string v0, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 71
    const/4 v0, -0x1

    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 73
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Established connection with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HfpClientConnService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    nop

    .line 79
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->createBlockForDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;

    move-result-object p2

    if-nez p2, :cond_3

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Block already exists for device "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ignoring."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HfpClientConnService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 82
    :cond_1
    if-nez p2, :cond_3

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disconnecting from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "HfpClientConnService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    monitor-enter p2

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->access$000(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;

    .line 90
    if-nez v0, :cond_2

    .line 91
    const-string v0, "HfpClientConnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnect for device but no block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    monitor-exit p2

    return-void

    .line 94
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->cleanup()V

    .line 96
    nop

    .line 97
    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 82
    :cond_3
    :goto_1
    goto :goto_2

    .line 99
    :cond_4
    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 100
    nop

    .line 101
    const-string p1, "android.bluetooth.headsetclient.extra.CALL"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 102
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 103
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;->this$0:Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->findBlockForDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;

    move-result-object v0

    .line 104
    if-nez v0, :cond_5

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call changed but no block for device "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HfpClientConnService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void

    .line 112
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->handleCall(Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    goto :goto_3

    .line 99
    :cond_6
    :goto_2
    nop

    .line 114
    :goto_3
    return-void
.end method
