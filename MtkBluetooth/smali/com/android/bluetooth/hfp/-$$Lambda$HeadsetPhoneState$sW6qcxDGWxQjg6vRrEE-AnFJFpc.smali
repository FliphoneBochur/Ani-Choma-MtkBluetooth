.class public final synthetic Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetPhoneState$sW6qcxDGWxQjg6vRrEE-AnFJFpc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetPhoneState$sW6qcxDGWxQjg6vRrEE-AnFJFpc;->f$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetPhoneState$sW6qcxDGWxQjg6vRrEE-AnFJFpc;->f$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->lambda$startListenForPhoneState$2$HeadsetPhoneState(Ljava/lang/Runnable;)V

    return-void
.end method
