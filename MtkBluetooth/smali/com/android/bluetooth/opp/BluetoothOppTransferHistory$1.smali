.class Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppTransferHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$000()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received intent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothOppTransferHistory"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;)Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppTransferAdapter;->notifyDataSetChanged()V

    .line 138
    :cond_1
    return-void
.end method
