.class Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppBtEnablingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothOppEnablingActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 143
    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->access$200(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$2;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->finish()V

    .line 152
    :cond_2
    :goto_0
    return-void
.end method
