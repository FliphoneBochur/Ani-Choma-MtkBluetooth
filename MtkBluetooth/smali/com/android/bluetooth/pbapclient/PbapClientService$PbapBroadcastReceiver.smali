.class Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PbapClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbapBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbapclient/PbapClientService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientService;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientService;Lcom/android/bluetooth/pbapclient/PbapClientService$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-eqz v1, :cond_1

    .line 187
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 188
    iget-object p2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 189
    iget-object p2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 191
    :cond_0
    goto :goto_1

    :cond_1
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->access$100(Lcom/android/bluetooth/pbapclient/PbapClientService;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 193
    invoke-virtual {p2}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->resumeDownload()V

    .line 194
    goto :goto_0

    :cond_2
    goto :goto_1

    .line 195
    :cond_3
    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 201
    const/4 v1, -0x1

    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 203
    if-nez p2, :cond_4

    .line 208
    iget-object p2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->access$200(Lcom/android/bluetooth/pbapclient/PbapClientService;Ljava/lang/String;Landroid/content/Context;)V

    .line 211
    :cond_4
    :goto_1
    return-void
.end method
