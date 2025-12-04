.class Lcom/android/bluetooth/opp/BluetoothOppFileProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppFileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppFileProvider;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppFileProvider;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppFileProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppFileProvider;

    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->access$000(Lcom/android/bluetooth/opp/BluetoothOppFileProvider;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppFileProvider$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppFileProvider;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->access$100(Lcom/android/bluetooth/opp/BluetoothOppFileProvider;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/bluetooth/opp/BluetoothOppFileProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 51
    :cond_0
    return-void
.end method
