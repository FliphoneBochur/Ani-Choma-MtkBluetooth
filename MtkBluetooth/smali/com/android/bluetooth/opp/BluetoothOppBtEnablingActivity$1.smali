.class Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;
.super Landroid/os/Handler;
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

    .line 119
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 122
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    const-string p1, "BluetoothOppEnablingActivity"

    const-string v0, "Received BT_ENABLING_TIMEOUT msg."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppBtEnablingActivity;)V

    .line 128
    nop

    .line 132
    :goto_0
    return-void
.end method
