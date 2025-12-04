.class Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "HeadsetPhoneState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetPhoneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .line 295
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 296
    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$202(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 301
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 302
    move v0, v1

    goto :goto_0

    .line 303
    :cond_0
    move v0, v2

    .line 304
    :goto_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 305
    :cond_1
    move v1, v2

    .line 307
    :goto_1
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$400(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result p1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$800(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_2

    .line 309
    monitor-exit p0

    return-void

    .line 311
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$402(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    .line 312
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {p1, v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$802(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    .line 313
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$500(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$300(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$400(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 320
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {p1, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$302(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    goto :goto_0

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$302(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    .line 325
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$300(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v1

    const/4 v3, 0x5

    invoke-static {v1, v3}, Ljava/lang/Integer;->min(II)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->max(II)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$302(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    .line 327
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$300(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result p1

    if-eq v0, p1, :cond_1

    .line 328
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$500(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    .line 330
    :cond_1
    return-void
.end method
