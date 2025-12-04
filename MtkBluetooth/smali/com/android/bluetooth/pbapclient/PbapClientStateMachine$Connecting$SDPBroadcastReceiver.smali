.class Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PbapClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SDPBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;->this$1:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$1;)V
    .locals 0

    .line 210
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 217
    const-string v0, "android.bluetooth.device.action.SDP_RECORD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 218
    nop

    .line 219
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;->this$1:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;

    iget-object v0, v0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 221
    const-string p1, "PbapClientStateMachine"

    const-string p2, "SDP Record fetched for different device - Ignore"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 224
    :cond_0
    const-string p1, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelUuid;

    .line 229
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 230
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;->this$1:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;

    iget-object p1, p1, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    const/16 v0, 0x9

    .line 231
    const-string v1, "android.bluetooth.device.extra.SDP_RECORD"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    .line 230
    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 234
    :cond_1
    return-void
.end method

.method public register()V
    .locals 2

    .line 237
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 238
    const-string v1, "android.bluetooth.device.action.SDP_RECORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;->this$1:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;

    iget-object v1, v1, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$600(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;->this$1:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;

    iget-object v0, v0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$600(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    return-void
.end method
