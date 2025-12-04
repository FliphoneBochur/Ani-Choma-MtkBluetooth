.class Lcom/android/bluetooth/a2dp/A2dpService$ConnectionStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "A2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpService;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpService;)V
    .locals 0

    .line 1258
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpService$ConnectionStateChangedReceiver;->this$0:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpService;Lcom/android/bluetooth/a2dp/A2dpService$1;)V
    .locals 0

    .line 1258
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService$ConnectionStateChangedReceiver;-><init>(Lcom/android/bluetooth/a2dp/A2dpService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1261
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1262
    return-void

    .line 1264
    :cond_0
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1265
    const-string v0, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1266
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1267
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService$ConnectionStateChangedReceiver;->this$0:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-static {v1, p1, p2, v0}, Lcom/android/bluetooth/a2dp/A2dpService;->access$200(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1268
    return-void
.end method
