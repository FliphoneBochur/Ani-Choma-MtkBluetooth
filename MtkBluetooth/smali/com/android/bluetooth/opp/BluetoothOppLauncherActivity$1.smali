.class Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;
.super Ljava/lang/Object;
.source "BluetoothOppLauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

.field final synthetic val$stream:Landroid/net/Uri;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;->val$stream:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 128
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeUnstartedSendFileInfo()V

    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$1;->val$stream:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->access$000(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 131
    return-void
.end method
