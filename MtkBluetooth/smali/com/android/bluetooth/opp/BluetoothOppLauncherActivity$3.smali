.class Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;
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

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->val$mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->val$uris:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 182
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeUnstartedSendFileInfo()V

    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->val$mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->val$uris:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 184
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppManager;->saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;ZZ)V

    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->access$100(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;)V

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->access$200(Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity$3;->this$0:Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppLauncherActivity;->finish()V

    .line 194
    :goto_0
    return-void
.end method
