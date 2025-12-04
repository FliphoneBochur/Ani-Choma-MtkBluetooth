.class public Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachineFactory;
.super Ljava/lang/Object;
.source "HeadsetClientStateMachineFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Landroid/os/HandlerThread;Lcom/android/bluetooth/hfpclient/NativeInterface;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .locals 0

    .line 29
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Landroid/os/Looper;Lcom/android/bluetooth/hfpclient/NativeInterface;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object p1

    return-object p1
.end method
