.class Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;
.super Landroid/database/ContentObserver;
.source "BluetoothOppTransferActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothTransferContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    .line 118
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 119
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 123
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    const-string p1, "BluetoothOppTransferActivity"

    const-string v0, "received db changes."

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$102(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;Z)Z

    .line 127
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V

    .line 128
    return-void
.end method
