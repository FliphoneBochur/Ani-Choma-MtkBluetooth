.class Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "HeadsetPhoneState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetPhoneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetPhoneStateOnSubscriptionChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .line 274
    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    .line 275
    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$000(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$100(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 281
    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$202(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 283
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$302(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    .line 284
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$402(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    .line 285
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$500(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$600(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    .line 288
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$HeadsetPhoneStateOnSubscriptionChangedListener;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$700(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    .line 289
    monitor-exit v0

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
