.class Lcom/android/bluetooth/btservice/ProfileService$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/btservice/ProfileService;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/ProfileService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/ProfileService;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ProfileService$1;->this$0:Lcom/android/bluetooth/btservice/ProfileService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 241
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 242
    nop

    .line 243
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 244
    if-ne v0, v1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ProfileService$1;->this$0:Lcom/android/bluetooth/btservice/ProfileService;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ProfileService;->access$000(Lcom/android/bluetooth/btservice/ProfileService;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "userChangeReceiver received an invalid EXTRA_USER_HANDLE"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 248
    :cond_0
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 249
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ProfileService$1;->this$0:Lcom/android/bluetooth/btservice/ProfileService;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ProfileService;->access$000(Lcom/android/bluetooth/btservice/ProfileService;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User switched to userId "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ProfileService$1;->this$0:Lcom/android/bluetooth/btservice/ProfileService;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->setCurrentUser(I)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ProfileService$1;->this$0:Lcom/android/bluetooth/btservice/ProfileService;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/ProfileService;->access$000(Lcom/android/bluetooth/btservice/ProfileService;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unlocked userId "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p1, p0, Lcom/android/bluetooth/btservice/ProfileService$1;->this$0:Lcom/android/bluetooth/btservice/ProfileService;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->setUserUnlocked(I)V

    .line 255
    :cond_2
    :goto_0
    return-void
.end method
