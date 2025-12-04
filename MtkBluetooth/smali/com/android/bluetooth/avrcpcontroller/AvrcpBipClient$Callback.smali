.class interface abstract Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;
.super Ljava/lang/Object;
.source "AvrcpBipClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onConnectionStateChanged(II)V
.end method

.method public abstract onGetImageComplete(ILjava/lang/String;Lcom/android/bluetooth/avrcpcontroller/BipImage;)V
.end method

.method public abstract onGetImagePropertiesComplete(ILjava/lang/String;Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;)V
.end method
