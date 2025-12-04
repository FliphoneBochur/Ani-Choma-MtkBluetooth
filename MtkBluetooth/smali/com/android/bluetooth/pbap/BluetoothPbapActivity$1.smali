.class Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothPbapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.bluetooth.pbap.userconfirmtimeout"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V

    .line 99
    return-void
.end method
