.class final Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;
.super Ljava/lang/Object;
.source "SapRilReceiver.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/sap/SapRilReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SapProxyDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/sap/SapRilReceiver;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/sap/SapRilReceiver;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 3

    .line 42
    const-string v0, "SapRilReceiver"

    const-string v1, "serviceDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    invoke-static {v0}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$000(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;->this$0:Lcom/android/bluetooth/sap/SapRilReceiver;

    .line 46
    invoke-static {v1}, Lcom/android/bluetooth/sap/SapRilReceiver;->access$000(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {v1, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 45
    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 48
    return-void
.end method
