.class Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;
.super Landroid/content/BroadcastReceiver;
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

    .line 90
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;->access$000(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;)V

    .line 97
    return-void
.end method
