.class Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$8;
.super Landroid/os/Handler;
.source "BluetoothOppIncomingFileConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$8;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 267
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$200()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "BluetoothIncomingFileConfirmActivity"

    const-string v0, "Received DISMISS_TIMEOUT_DIALOG msg."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$8;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/app/TctDialog;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 272
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$8;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)Landroid/app/TctDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/TctDialog;->dismiss()V

    .line 275
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$8;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->finish()V

    .line 276
    nop

    .line 280
    :goto_0
    return-void
.end method
